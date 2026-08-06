import 'package:flutter/material.dart';

/// 标签选择器
///
/// 职责说明：
/// - 提供内容标签选择（5 个标签可选）
/// - 对应后端 label 字段
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class LabelSelector extends StatefulWidget {
  const LabelSelector({super.key});

  @override
  State<LabelSelector> createState() => _LabelSelectorState();
}

class _LabelSelectorState extends State<LabelSelector> {
  int _selected = 5;

  static const List<int> _labels = <int>[1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: _labels.map((int label) {
        final bool isSelected = label == _selected;
        return ChoiceChip(
          label: Text('标签 $label'),
          selected: isSelected,
          onSelected: (bool selected) {
            if (selected) {
              setState(() => _selected = label);
              // TODO: 同步到 EditorNotifier
            }
          },
        );
      }).toList(),
    );
  }
}
