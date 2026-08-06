import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/wall_type.dart';
import '../providers/wall_page_provider.dart';
import '../providers/wall_page_state.dart';
import '../widgets/wall_list_view.dart';

/// 照片墙页
///
/// 职责说明：
/// - 展示照片类型列表（type=1）
/// - 设计稿：App端设计-首页-照片墙.jpg
/// - 通过 [WallPageNotifier] 切换至 photo 类型并加载数据
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PhotoWallPage extends ConsumerStatefulWidget {
  const PhotoWallPage({super.key});

  @override
  ConsumerState<PhotoWallPage> createState() => _PhotoWallPageState();
}

class _PhotoWallPageState extends ConsumerState<PhotoWallPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final WallPageState state = ref.read(wallPageProvider);
      if (state.type != WallType.photo || state.items.isEmpty) {
        ref.read(wallPageProvider.notifier).switchType(WallType.photo);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const WallListView();
  }
}
