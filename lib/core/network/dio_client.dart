import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/env_config.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/retry_interceptor.dart';

part 'dio_client.g.dart';

/// Dio 客户端封装
///
/// 职责说明：
/// - 创建配置好的 [Dio] 实例（baseUrl / 超时 / 拦截器链）
/// - 拦截器顺序：Header → Auth → Retry → Logging → Error
/// - 通过 Riverpod Provider 单例化，便于测试替换
///
/// 设计模式：单例 + 责任链（拦截器）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  /// 暴露原始 Dio（供高级用法）
  Dio get dio => _dio;

  /// POST 请求
  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: query,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// GET 请求
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: query,
      options: options,
      cancelToken: cancelToken,
    );
  }
}

/// Dio Provider
///
/// 全局单例，注入 [EnvConfig] 决定 baseUrl 与日志开关。
@Riverpod(keepAlive: true)
DioClient dioClient(Ref ref) {
  final EnvConfig env = ref.watch(envConfigProvider);
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: env.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: <String, dynamic>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // 拦截器链顺序：Header → Auth → Retry → Logging → Error
  dio.interceptors.add(HeaderInterceptor());
  dio.interceptors.add(AuthInterceptor());
  if (env.enableRetry) {
    dio.interceptors.add(RetryInterceptor(dio: dio));
  }
  if (env.enableLogging) {
    dio.interceptors.add(LoggingInterceptor());
  }
  dio.interceptors.add(ErrorInterceptor());

  return DioClient(dio);
}

/// EnvConfig Provider（默认 dev 环境）
@Riverpod(keepAlive: true)
EnvConfig envConfig(Ref ref) => EnvConfig.dev();
