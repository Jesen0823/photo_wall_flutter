import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/app_error_widget.dart';
import '../../../../core/widgets/app_loading_indicator.dart';
import '../providers/detail_provider.dart';
import '../providers/detail_state.dart';
import '../widgets/detail_actions.dart';
import '../widgets/detail_content.dart';
import '../widgets/detail_header.dart';

/// 照片详情页
///
/// 职责说明：
/// - 展示照片详情（大图 + 描述 + 互动栏）
/// - 设计稿：App端设计-照片详情页.jpg
/// - 路由：/photo/:id
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PhotoDetailPage extends ConsumerStatefulWidget {
  const PhotoDetailPage({super.key});

  @override
  ConsumerState<PhotoDetailPage> createState() => _PhotoDetailPageState();
}

class _PhotoDetailPageState extends ConsumerState<PhotoDetailPage> {
  @override
  void initState() {
    super.initState();
    final int id =
        int.tryParse(GoRouterState.of(context).pathParameters['id'] ?? '') ?? 0;
    Future<void>.microtask(() {
      ref.read(detailProvider.notifier).load(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final DetailState state = ref.watch(detailProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('照片详情')),
      body: state.isLoading
          ? const AppLoadingIndicator()
          : state.errorMessage != null
          ? AppErrorWidget(message: state.errorMessage!)
          : state.detail == null
          ? const SizedBox.shrink()
          : ListView(
              children: <Widget>[
                DetailHeader(detail: state.detail!),
                DetailContent(detail: state.detail!),
                DetailActions(detail: state.detail!),
              ],
            ),
    );
  }
}
