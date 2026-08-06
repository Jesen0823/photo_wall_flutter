/// 领域层失败抽象
///
/// 职责说明：
/// - 表达业务领域的失败语义（与基础设施异常解耦）
/// - 由 Repository 将 ApiException 转换为 Failure
/// - UI 层根据 Failure 类型展示对应提示
///
/// 设计模式：代数数据类型（密封类）+ Either 模式
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
sealed class Failure {
  final String message;

  const Failure(this.message);
}

/// 网络失败
class NetworkFailure extends Failure {
  const NetworkFailure({String message = '网络连接失败'}) : super(message);
}

/// 服务器失败
class ServerFailure extends Failure {
  final int? statusCode;
  const ServerFailure({String message = '服务器错误', this.statusCode})
      : super(message);
}

/// 缓存失败
class CacheFailure extends Failure {
  const CacheFailure({String message = '本地缓存读取失败'}) : super(message);
}

/// 业务失败
class BusinessFailure extends Failure {
  final int businessCode;
  const BusinessFailure({required this.businessCode, String? message})
      : super(message ?? '业务错误 $businessCode');
}

/// 未授权失败
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({String message = '请先登录'}) : super(message);
}

/// 未知失败
class UnknownFailure extends Failure {
  const UnknownFailure({String message = '未知错误'}) : super(message);
}
