import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/detail/presentation/pages/message_detail_page.dart';
import '../../features/detail/presentation/pages/photo_detail_page.dart';
import '../../features/editor/presentation/pages/message_editor_page.dart';
import '../../features/editor/presentation/pages/photo_editor_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../widgets/app_error_widget.dart';
import 'app_routes.dart';
import 'guards/auth_guard.dart';
import 'route_names.dart';

/// 应用路由配置
///
/// 职责说明：
/// - 集中配置 go_router 路由表
/// - 配置全局重定向守卫（登录拦截 / 路由降级）
/// - 配置错误页降级（unknown 路由 → 统一错误页）
///
/// 设计模式：策略 + 责任链（redirect 链）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppRouter {
  /// 构建 GoRouter 实例
  ///
  /// 通过 Provider 注入，使路由可被测试替换。
  static GoRouter build() {
    return GoRouter(
      initialLocation: AppRoutes.home,
      debugLogDiagnostics: true,
      redirect: _globalRedirect,
      errorBuilder: (BuildContext context, GoRouterState state) {
        return const AppErrorWidget(message: '页面不存在');
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutes.home,
          name: RouteNames.home,
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
        GoRoute(
          path: AppRoutes.photoDetail,
          name: RouteNames.photoDetail,
          builder: (BuildContext context, GoRouterState state) =>
              const PhotoDetailPage(),
        ),
        GoRoute(
          path: AppRoutes.messageDetail,
          name: RouteNames.messageDetail,
          builder: (BuildContext context, GoRouterState state) =>
              const MessageDetailPage(),
        ),
        GoRoute(
          path: AppRoutes.photoEditor,
          name: RouteNames.photoEditor,
          builder: (BuildContext context, GoRouterState state) =>
              const PhotoEditorPage(),
        ),
        GoRoute(
          path: AppRoutes.messageEditor,
          name: RouteNames.messageEditor,
          builder: (BuildContext context, GoRouterState state) =>
              const MessageEditorPage(),
        ),
        GoRoute(
          path: AppRoutes.login,
          name: RouteNames.login,
          builder: (BuildContext context, GoRouterState state) =>
              const LoginPage(),
        ),
        GoRoute(
          path: AppRoutes.register,
          name: RouteNames.register,
          builder: (BuildContext context, GoRouterState state) =>
              const RegisterPage(),
        ),
      ],
    );
  }

  /// 全局重定向守卫
  ///
  /// - 用于未来登录拦截：未登录访问受保护页面 → 跳转登录页
  /// - 当前阶段不做实际拦截，仅预留入口
  static Future<String?> _globalRedirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    return AuthGuard.redirect(context, state);
  }
}
