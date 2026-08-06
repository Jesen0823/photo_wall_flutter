import 'package:flutter/widgets.dart';

/// Widget 扩展
///
/// 职责说明：
/// - 提供 Widget 常用包装的便捷方法（padding / visible 等）
/// - 减少重复样板代码
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
extension WidgetExtensions on Widget {
  /// 添加四周 padding
  Widget paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// 仅水平 padding
  Widget paddingSymmetric({double horizontal = 0, double vertical = 0}) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  /// 居中
  Widget get centered => Center(child: this);

  /// TODO: 按需扩展更多便捷包装
}
