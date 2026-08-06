import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/wall_type.dart';
import '../providers/wall_page_provider.dart';
import '../providers/wall_page_state.dart';
import '../widgets/wall_list_view.dart';

/// 留言墙页
///
/// 职责说明：
/// - 展示留言类型列表（type=0）
/// - 设计稿：App端设计-首页-留言墙.jpg
/// - 通过 [WallPageNotifier] 切换至 message 类型并加载数据
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class MessageWallPage extends ConsumerStatefulWidget {
  const MessageWallPage({super.key});

  @override
  ConsumerState<MessageWallPage> createState() => _MessageWallPageState();
}

class _MessageWallPageState extends ConsumerState<MessageWallPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final WallPageState state = ref.read(wallPageProvider);
      if (state.type != WallType.message || state.items.isEmpty) {
        ref.read(wallPageProvider.notifier).switchType(WallType.message);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const WallListView();
  }
}
