import 'error_code.dart';

/// 统一 API 异常
///
/// 职责说明：
/// - 包装所有网络/业务异常，携带 [ErrorCode] 与原始信息
/// - 由 [ErrorInterceptor] 统一捕获 DioException 转换而来
/// - 上层通过 pattern matching 区分处理
///
/// 设计模式：自定义异常 + 工厂构造
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ApiException implements Exception {
  /// 错误码
  final ErrorCode code;

  /// 错误信息
  final String message;

  /// HTTP 状态码（可选）
  final int? statusCode;

  /// 业务错误码（HTTP 200 但 code != 200 时）
  final int? businessCode;

  /// 原始异常
  final Object? cause;

  /// 构造函数
  const ApiException({
    required this.code,
    required this.message,
    this.statusCode,
    this.businessCode,
    this.cause,
  });

  /// 从网络错误构造
  factory ApiException.network({String? message, Object? cause}) => ApiException(
        code: ErrorCode.network,
        message: message ?? '网络连接失败',
        cause: cause,
      );

  /// 从超时构造
  factory ApiException.timeout({String? message, Object? cause}) => ApiException(
        code: ErrorCode.timeout,
        message: message ?? '请求超时',
        cause: cause,
      );

  /// 从 HTTP 状态码构造
  factory ApiException.fromStatus(int status, {String? message, Object? cause}) {
    if (status == 401) {
      return ApiException(
        code: ErrorCode.unauthorized,
        message: message ?? '未授权',
        statusCode: status,
        cause: cause,
      );
    }
    if (status == 403) {
      return ApiException(
        code: ErrorCode.forbidden,
        message: message ?? '禁止访问',
        statusCode: status,
        cause: cause,
      );
    }
    if (status == 404) {
      return ApiException(
        code: ErrorCode.notFound,
        message: message ?? '资源不存在',
        statusCode: status,
        cause: cause,
      );
    }
    if (status >= 400 && status < 500) {
      return ApiException(
        code: ErrorCode.client,
        message: message ?? '客户端错误 $status',
        statusCode: status,
        cause: cause,
      );
    }
    if (status >= 500) {
      return ApiException(
        code: ErrorCode.server,
        message: message ?? '服务器错误 $status',
        statusCode: status,
        cause: cause,
      );
    }
    return ApiException(
      code: ErrorCode.unknown,
      message: message ?? '未知错误',
      statusCode: status,
      cause: cause,
    );
  }

  /// 从业务码构造（HTTP 200，body.code != 200）
  factory ApiException.business(int businessCode, {String? message}) =>
      ApiException(
        code: ErrorCode.business,
        message: message ?? '业务错误 $businessCode',
        businessCode: businessCode,
      );

  @override
  String toString() => 'ApiException(${code.name}): $message'
      '${statusCode != null ? ' [HTTP $statusCode]' : ''}'
      '${businessCode != null ? ' [biz $businessCode]' : ''}';
}
