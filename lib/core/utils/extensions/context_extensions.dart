import 'package:flutter/material.dart';

/// BuildContext 扩展
///
/// 职责说明：
/// - 提供 Theme / MediaQuery / Localization 等常用属性的便捷访问
/// - 减少样板代码
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
extension ContextExtensions on BuildContext {
  /// 当前 ThemeData
  ThemeData get theme => Theme.of(this);

  /// 当前 ColorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// 当前 TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// 当前 MediaQueryData
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// 屏幕尺寸
  Size get screenSize => mediaQuery.size;

  /// 屏幕宽度
  double get screenWidth => screenSize.width;

  /// 屏幕高度
  double get screenHeight => screenSize.height;

  /// 安全区域 padding
  EdgeInsets get viewPadding => mediaQuery.viewPadding;
}
