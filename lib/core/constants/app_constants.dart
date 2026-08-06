/// 应用全局常量
///
/// 职责说明：
/// - 定义应用级常量（应用名、版本、构建模式等）
/// - 供全局共享，避免硬编码
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppConstants {
  /// 应用名称
  static const String appName = 'photo_wall_flutter';

  /// 应用版本号
  static const String appVersion = '1.0.0';

  /// 默认分页大小
  static const int defaultPageSize = 8;

  /// 默认用户 ID（未登录态）
  static const String defaultUserId = '0';

  // TODO: 按需补充业务常量

  /// 私有构造，禁止实例化
  const AppConstants._();
}
