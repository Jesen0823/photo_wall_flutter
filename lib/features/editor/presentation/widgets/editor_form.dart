import 'package:flutter/material.dart';

/// 编辑表单
///
/// 职责说明：
/// - 提供文本内容输入框（多行）
/// - 含字数统计与校验
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class EditorForm extends StatefulWidget {
  const EditorForm({super.key});

  @override
  State<EditorForm> createState() => _EditorFormState();
}

class _EditorFormState extends State<EditorForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      maxLines: 8,
      decoration: const InputDecoration(
        hintText: '写点什么...',
        border: OutlineInputBorder(),
      ),
      // TODO: 接入 EditorNotifier 同步 message 字段
    );
  }
}
