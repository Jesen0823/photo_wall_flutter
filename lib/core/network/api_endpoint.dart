/// API 端点描述
///
/// 职责说明：
/// - 描述单个 API 请求的方法、路径、是否需要鉴权等元数据
/// - 由 [DioClient] 消费，封装请求调用
/// - 配合 [ApiConstants] 使用
///
/// 设计模式：值对象（Value Object）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ApiEndpoint {
  /// HTTP 方法（GET / POST / PUT / DELETE）
  final String method;

  /// 路径（相对于 baseUrl）
  final String path;

  /// 是否需要鉴权
  final bool requiresAuth;

  /// 是否需要重试
  final bool retryable;

  /// 构造函数
  const ApiEndpoint({
    required this.method,
    required this.path,
    this.requiresAuth = false,
    this.retryable = true,
  });

  /// POST 便捷构造
  const ApiEndpoint.post(this.path, {this.requiresAuth = false, this.retryable = true})
      : method = 'POST';

  /// GET 便捷构造
  const ApiEndpoint.get(this.path, {this.requiresAuth = false, this.retryable = true})
      : method = 'GET';

  /// PUT 便捷构造
  const ApiEndpoint.put(this.path, {this.requiresAuth = true, this.retryable = false})
      : method = 'PUT';

  /// DELETE 便捷构造
  const ApiEndpoint.delete(this.path, {this.requiresAuth = true, this.retryable = false})
      : method = 'DELETE';
}
