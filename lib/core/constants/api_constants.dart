/// API 端点常量
///
/// 职责说明：
/// - 集中定义后端 API 路径与请求方法
/// - 配合 [ApiEndpoint] 使用，避免在业务代码中硬编码 URL
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ApiConstants {
  /// 基础地址（dev 环境，可通过 [EnvConfig] 切换）
  static const String baseUrlDev = 'http://localhost:8080';

  /// 基础地址（prod 环境）
  static const String baseUrlProd = 'https://api.example.com';

  /// API 前缀
  static const String apiPrefix = '/api';

  // ---- 端点路径 ----

  /// 留言/照片墙分页查询
  static const String findWallPage = '/findWallPage';

  // TODO: 补充点赞 / 举报 / 撤回 / 详情 / 发布 等端点

  /// 私有构造，禁止实例化
  const ApiConstants._();
}
