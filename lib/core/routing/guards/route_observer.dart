import 'package:flutter/material.dart';

/// 路由观察者
///
/// 职责说明：
/// - 监听路由 push / pop / replace 事件
/// - 用于页面埋点、用户行为分析
/// - 通过 NavigatorObserver 挂载到 go_router
///
/// 设计模式：观察者（Observer）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // TODO: 上报页面进入事件
    debugPrint('[Route] push -> ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // TODO: 上报页面退出事件
    debugPrint('[Route] pop <- ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    // TODO: 上报页面替换事件
    debugPrint('[Route] replace ${oldRoute?.settings.name} -> ${newRoute?.settings.name}');
  }
}
