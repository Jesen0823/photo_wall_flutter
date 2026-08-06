/// 路由路径常量
///
/// 职责说明：
/// - 集中定义应用所有路由路径
/// - 供 [AppRouter] 与 go_router 声明式路由使用
/// - 支持 Web URL 同步与深链
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppRoutes {
  /// 首页（含照片墙 / 留言墙 Tab）
  static const String home = '/';

  /// 照片详情页
  static const String photoDetail = '/photo/:id';

  /// 留言详情页
  static const String messageDetail = '/message/:id';

  /// 照片发布/编辑页
  static const String photoEditor = '/editor/photo';

  /// 留言发布/编辑页
  static const String messageEditor = '/editor/message';

  /// 登录页（预留）
  static const String login = '/login';

  /// 注册页（预留）
  static const String register = '/register';

  // TODO: 按需补充个人中心 / 设置 等路由

  /// 私有构造，禁止实例化
  const AppRoutes._();
}
