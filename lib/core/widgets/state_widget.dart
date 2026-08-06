import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_empty_widget.dart';
import 'app_error_widget.dart';
import 'app_loading_indicator.dart';

/// 状态切换 Widget
///
/// 职责说明：
/// - 根据 AsyncValue 状态自动切换 Loading / Error / Empty / Data
/// - 减少 ViewModel 层的状态判断样板代码
/// - 配合 Riverpod AsyncNotifier 使用
///
/// 设计模式：策略选择器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class StateWidget<T> extends StatelessWidget {
  /// 异步状态
  final AsyncValue<List<T>> state;

  /// 数据构建器
  final WidgetBuilder dataBuilder;

  /// 错误信息构建器（可选）
  final String Function(Object? error)? errorBuilder;

  /// 空数据判断（可选）
  final bool Function(List<T>? data)? isEmpty;

  /// 重试回调（可选）
  final VoidCallback? onRetry;

  const StateWidget({
    super.key,
    required this.state,
    required this.dataBuilder,
    this.errorBuilder,
    this.isEmpty,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return state.when(
      data: (List<T>? data) {
        if (data == null || data.isEmpty || (isEmpty?.call(data) ?? false)) {
          return const AppEmptyWidget(message: '暂无内容');
        }
        return dataBuilder(context);
      },
      loading: () => const AppLoadingIndicator(),
      error: (Object? error, StackTrace? _) => AppErrorWidget(
        message: errorBuilder?.call(error) ?? error?.toString() ?? '加载失败',
        onRetry: onRetry,
      ),
    );
  }
}
