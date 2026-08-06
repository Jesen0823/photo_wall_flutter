import 'package:flutter/material.dart';

/// 统一 Scaffold
///
/// 职责说明：
/// - 封装统一 AppBar / 背景色 / SafeArea 的 Scaffold
/// - 减少各页面样板代码
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppScaffold extends StatelessWidget {
  /// AppBar 标题
  final String? title;

  /// 是否显示 AppBar
  final bool showAppBar;

  /// 是否显示返回按钮
  final bool showBackButton;

  /// body 内容
  final Widget body;

  /// 右上角操作
  final List<Widget>? actions;

  /// 底部浮动按钮
  final Widget? floatingActionButton;

  /// 构造函数
  const AppScaffold({
    super.key,
    this.title,
    this.showAppBar = true,
    this.showBackButton = true,
    required this.body,
    this.actions,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: title != null ? Text(title!) : null,
              leading: showBackButton ? null : const SizedBox.shrink(),
              actions: actions,
            )
          : null,
      body: SafeArea(child: body),
      floatingActionButton: floatingActionButton,
    );
  }
}
