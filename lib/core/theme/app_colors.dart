import 'package:flutter/material.dart';

/// 应用颜色调色板
///
/// 职责说明：
/// - 集中定义应用语义色（主色、强调色、背景、文字、状态色等）
/// - 供 [AppTheme] 与各 Widget 引用，确保配色统一
///
/// 设计模式：常量集合 + 语义命名
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppColors {
  // ---- 主色调 ----
  /// 主色（亮色）
  static const Color primaryLight = Color(0xFF6750A4);

  /// 主色（暗色）
  static const Color primaryDark = Color(0xFFD0BCFF);

  // ---- 功能色 ----
  static const Color success = Color(0xFF386A20);
  static const Color warning = Color(0xFF7C5800);
  static const Color error = Color(0xFFB3261E);

  // ---- 留言墙卡片色板（对应后端 color 字段 1-N）----
  static const List<Color> wallCardColors = [
    Color(0xFFFFCDD2),
    Color(0xFFFFF9C4),
    Color(0xFFC8E6C9),
    Color(0xFFB3E5FC),
    Color(0xFFE1BEE7),
  ];

  // TODO: 按需扩展品牌色

  /// 私有构造，禁止实例化
  const AppColors._();
}
