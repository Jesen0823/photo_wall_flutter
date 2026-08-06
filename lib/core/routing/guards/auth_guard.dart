import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 鉴权路由守卫（预留）
///
/// 职责说明：
/// - 拦截受保护路由，未登录时重定向至登录页
/// - 登录完成后回到原目标路由
/// - 当前阶段为预留实现，返回 null（不拦截）
///
/// 设计模式：责任链节点
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AuthGuard {
  /// 受保护路径列表（预留）
  static const List<String> protectedPaths = <String>[
    // '/profile',
    // '/settings',
  ];

  /// 执行重定向判断
  ///
  /// 返回值：
  /// - null：放行
  /// - 非 null：重定向至该路径
  static Future<String?> redirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    // TODO: 接入用户登录态 Provider，判断是否已登录
    // final isAuthed = ref.read(authProvider).maybeWhen(
    //       data: (user) => user != null,
    //       orElse: () => false,
    //     );
    // final needsAuth = protectedPaths.contains(state.matchedLocation);
    // if (needsAuth && !isAuthed) {
    //   final from = Uri.encodeComponent(state.matchedLocation);
    //   return '${AppRoutes.login}?from=$from';
    // }
    return null;
  }

  /// 私有构造，禁止实例化
  const AuthGuard._();
}
