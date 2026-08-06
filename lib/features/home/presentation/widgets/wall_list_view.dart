import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_empty_widget.dart';
import '../../../../core/widgets/app_error_widget.dart';
import '../../../../core/widgets/app_loading_indicator.dart';
import '../../domain/entities/wall_item_entity.dart';
import '../../domain/entities/wall_type.dart';
import '../providers/wall_page_provider.dart';
import '../providers/wall_page_state.dart';
import 'message_wall_card.dart';
import 'photo_wall_card.dart';

/// 墙体列表 Widget
///
/// 职责说明：
/// - 根据 [WallPageNotifier] 状态渲染列表
/// - 自动切换 Loading / Error / Empty / Data
/// - 支持下拉刷新与上拉加载更多
///
/// 设计模式：根据状态选择视图
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallListView extends ConsumerWidget {
  const WallListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final WallPageState state = ref.watch(wallPageProvider);

    if (state.isRefreshing && state.items.isEmpty) {
      return const AppLoadingIndicator();
    }
    if (state.errorMessage != null && state.items.isEmpty) {
      return AppErrorWidget(
        message: state.errorMessage!,
        onRetry: () =>
            ref.read(wallPageProvider.notifier).refresh(),
      );
    }
    if (state.items.isEmpty) {
      return const AppEmptyWidget(message: '暂无内容');
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(wallPageProvider.notifier).refresh(),
      child: ListView.builder(
        itemCount: state.items.length + (state.hasMore ? 1 : 0),
        itemBuilder: (BuildContext context, int index) {
          if (index >= state.items.length) {
            // 加载更多占位
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            );
          }
          final WallItemEntity item = state.items[index];
          return state.type == WallType.photo
              ? PhotoWallCard(item: item)
              : MessageWallCard(item: item);
        },
      ),
    );
  }
}
