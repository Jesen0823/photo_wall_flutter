/// 路由名称常量
///
/// 职责说明：
/// - 为每条路由定义语义化名称，便于命名路由跳转与埋点
/// - 与 [AppRoutes] 路径一一对应
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class RouteNames {
  static const String home = 'home';
  static const String photoDetail = 'photoDetail';
  static const String messageDetail = 'messageDetail';
  static const String photoEditor = 'photoEditor';
  static const String messageEditor = 'messageEditor';
  static const String login = 'login';
  static const String register = 'register';

  // TODO: 按需补充其他路由名称

  /// 私有构造，禁止实例化
  const RouteNames._();
}
