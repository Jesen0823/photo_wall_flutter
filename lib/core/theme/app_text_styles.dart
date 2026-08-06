import 'package:flutter/material.dart';

/// 应用文本样式
///
/// 职责说明：
/// - 定义应用统一的文本样式（标题、正文、副标题、按钮等）
/// - 配合 [AppTheme] 在亮/暗主题下提供对应变体
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppTextStyles {
  /// 大标题
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  /// 标题
  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  /// 正文
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  /// 辅助文字
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  // TODO: 按需扩展其他样式

  /// 私有构造，禁止实例化
  const AppTextStyles._();
}
