import 'package:dio/dio.dart';

/// 重试拦截器
///
/// 职责说明：
/// - 对网络/超时类错误自动重试（默认 2 次，指数退避）
/// - 仅对幂等或标记 retryable 的端点生效
/// - 提升弱网环境下请求成功率
///
/// 设计模式：责任链 + 策略
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class RetryInterceptor extends Interceptor {
  final Dio dio;

  /// 最大重试次数
  final int maxRetries;

  /// 基础退避时长
  final Duration baseDelay;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 2,
    this.baseDelay = const Duration(milliseconds: 500),
  });

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final int? retryCount = err.requestOptions.extra['retryCount'] as int?;
    if (retryCount == null || retryCount >= maxRetries) {
      handler.next(err);
      return;
    }

    // TODO: 仅对网络/超时类错误重试，对 4xx 业务错误直接抛出
    final bool shouldRetry =
        err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.connectionError;

    if (!shouldRetry) {
      handler.next(err);
      return;
    }

    // 指数退避
    await Future<void>.delayed(baseDelay * (1 << retryCount));

    final RequestOptions options = err.requestOptions
      ..extra['retryCount'] = retryCount + 1;

    try {
      final Response<dynamic> response = await dio.fetch<dynamic>(options);
      handler.resolve(response);
    } on DioException catch (e) {
      handler.next(e);
    }
  }
}
