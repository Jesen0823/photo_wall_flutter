import 'package:flutter/material.dart';

import 'app_colors.dart';

/// 应用主题定义
///
/// 职责说明：
/// - 提供 Material 3 亮色 / 暗色主题
/// - 统一组件视觉风格（AppBar、Card、输入框、按钮等）
/// - 由 [MaterialApp.router] 的 theme / darkTheme 引用
///
/// 设计模式：工厂方法（亮/暗主题由静态方法生产）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppTheme {
  /// 亮色主题
  static ThemeData get lightTheme {
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryLight,
    );
    return _buildTheme(scheme);
  }

  /// 暗色主题
  static ThemeData get darkTheme {
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primaryLight,
      brightness: Brightness.dark,
    );
    return _buildTheme(scheme);
  }

  /// 构建主题
  static ThemeData _buildTheme(ColorScheme scheme) {
    // TODO: 完善组件主题（AppBar / Card / Input / Button 等）
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
    );
  }

  /// 私有构造，禁止实例化
  const AppTheme._();
}
