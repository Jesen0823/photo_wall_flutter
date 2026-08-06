import '../network/api_exception.dart';
import '../network/error_code.dart';
import 'failures.dart';

/// 错误处理工具
///
/// 职责说明：
/// - 将基础设施异常（[ApiException] / [Object]）转换为领域 [Failure]
/// - 统一异常 → 失败 的映射规则，避免散落在各 Repository
/// - 提供日志上报入口
///
/// 设计模式：工厂 + 适配器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ErrorHandler {
  /// 将任意异常转换为 Failure
  static Failure toFailure(Object? error) {
    if (error is ApiException) {
      return _fromApiException(error);
    }
    if (error is Failure) {
      return error;
    }
    return UnknownFailure(message: error?.toString() ?? '未知错误');
  }

  /// ApiException → Failure
  static Failure _fromApiException(ApiException e) {
    switch (e.code) {
      case ErrorCode.network:
      case ErrorCode.timeout:
      case ErrorCode.connection:
        return NetworkFailure(message: e.message);
      case ErrorCode.unauthorized:
        return UnauthorizedFailure(message: e.message);
      case ErrorCode.server:
        return ServerFailure(message: e.message, statusCode: e.statusCode);
      case ErrorCode.business:
        return BusinessFailure(
          businessCode: e.businessCode ?? -1,
          message: e.message,
        );
      case ErrorCode.cancel:
        return const UnknownFailure(message: '请求已取消');
      case ErrorCode.client:
      case ErrorCode.forbidden:
      case ErrorCode.notFound:
      case ErrorCode.unknown:
        return UnknownFailure(message: e.message);
    }
  }

  /// 私有构造，禁止实例化
  const ErrorHandler._();
}
