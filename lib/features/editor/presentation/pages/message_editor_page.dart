import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../home/domain/entities/wall_type.dart';
import '../../domain/entities/publish_entity.dart';
import '../providers/editor_provider.dart';
import '../widgets/editor_form.dart';
import '../widgets/label_selector.dart';

/// 留言编辑/发布页
///
/// 职责说明：
/// - 提供留言类型内容的编辑与发布
/// - 设计稿：App端设计-发表留言-编辑页面.jpg
/// - 路由：/editor/message
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class MessageEditorPage extends ConsumerStatefulWidget {
  const MessageEditorPage({super.key});

  @override
  ConsumerState<MessageEditorPage> createState() => _MessageEditorPageState();
}

class _MessageEditorPageState extends ConsumerState<MessageEditorPage> {
  @override
  void initState() {
    super.initState();
    final String? editingIdStr =
        GoRouterState.of(context).uri.queryParameters['id'];
    final int? editingId =
        editingIdStr == null ? null : int.tryParse(editingIdStr);
    Future<void>.microtask(() {
      ref.read(editorProvider.notifier).init(
            PublishEntity(
              type: WallType.message,
              message: '',
              label: 5,
              color: 1,
              userId: '0',
              editingId: editingId,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('发表留言')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const <Widget>[
          EditorForm(),
          SizedBox(height: 16),
          LabelSelector(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(editorProvider.notifier).submit(),
        icon: const Icon(Icons.send),
        label: const Text('发表'),
      ),
    );
  }
}
