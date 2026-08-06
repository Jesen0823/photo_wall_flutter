/// 错误码枚举
///
/// 职责说明：
/// - 定义应用统一错误码体系
/// - 覆盖网络层、业务层、客户端、服务端错误
/// - 配合 [ApiException] 进行异常分类
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
enum ErrorCode {
  /// 网络连接失败
  network,

  /// 请求超时
  timeout,

  /// 请求被取消
  cancel,

  /// 连接错误（DNS / SSL）
  connection,

  /// 客户端错误 4xx
  client,

  /// 服务端错误 5xx
  server,

  /// 业务错误（HTTP 200 但 code != 200）
  business,

  /// 未知错误
  unknown,

  /// 未授权（401）
  unauthorized,

  /// 禁止访问（403）
  forbidden,

  /// 资源不存在（404）
  notFound,
}

/// 错误码扩展：获取可读描述
extension ErrorCodeX on ErrorCode {
  String get label {
    switch (this) {
      case ErrorCode.network:
        return '网络连接失败';
      case ErrorCode.timeout:
        return '请求超时';
      case ErrorCode.cancel:
        return '请求已取消';
      case ErrorCode.connection:
        return '连接错误';
      case ErrorCode.client:
        return '客户端错误';
      case ErrorCode.server:
        return '服务器错误';
      case ErrorCode.business:
        return '业务错误';
      case ErrorCode.unknown:
        return '未知错误';
      case ErrorCode.unauthorized:
        return '未授权';
      case ErrorCode.forbidden:
        return '禁止访问';
      case ErrorCode.notFound:
        return '资源不存在';
    }
  }
}
