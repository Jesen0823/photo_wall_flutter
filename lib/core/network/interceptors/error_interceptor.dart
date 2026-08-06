import 'package:dio/dio.dart';

import '../api_exception.dart';
import '../error_code.dart';

/// 错误转换拦截器
///
/// 职责说明：
/// - 统一捕获 [DioException]，转换为 [ApiException]
/// - 解析 HTTP 状态码与业务错误码
/// - 上层只需处理 ApiException，无需感知底层异常类型
///
/// 设计模式：责任链节点 + 适配器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final ApiException apiException = _convert(err);
    handler.next(DioException(
      requestOptions: err.requestOptions,
      type: err.type,
      response: err.response,
      error: apiException,
      stackTrace: err.stackTrace,
      message: apiException.message,
    ));
  }

  /// 将 DioException 转换为 ApiException
  ApiException _convert(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.transformTimeout:
        return ApiException.timeout(cause: err);
      case DioExceptionType.connectionError:
        return ApiException.network(cause: err);
      case DioExceptionType.cancel:
        return const ApiException(
          code: ErrorCode.cancel,
          message: '请求已取消',
        );
      case DioExceptionType.badCertificate:
        return const ApiException(
          code: ErrorCode.connection,
          message: '证书错误',
        );
      case DioExceptionType.badResponse:
        final int? status = err.response?.statusCode;
        if (status != null) {
          return ApiException.fromStatus(status, cause: err);
        }
        return ApiException(
          code: ErrorCode.unknown,
          message: err.message ?? '未知错误',
          cause: err,
        );
      case DioExceptionType.unknown:
        return ApiException(
          code: ErrorCode.unknown,
          message: err.message ?? '未知错误',
          cause: err,
        );
    }
  }
}
