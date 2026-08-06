/// 应用异常基类
///
/// 职责说明：
/// - 定义应用层未捕获异常的统一基类
/// - 区分于 [ApiException]（网络层），此为业务/客户端逻辑抛出
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppException implements Exception {
  /// 异常码
  final String code;

  /// 异常信息
  final String message;

  /// 原始异常
  final Object? cause;

  const AppException({required this.code, required this.message, this.cause});

  @override
  String toString() => 'AppException($code): $message';
}

/// 参数异常
class ArgumentException extends AppException {
  const ArgumentException({super.message = '参数错误', super.cause})
    : super(code: 'ARG');
}

/// 状态异常
class IllegalStateException extends AppException {
  const IllegalStateException({super.message = '状态异常', super.cause})
    : super(code: 'STATE');
}
