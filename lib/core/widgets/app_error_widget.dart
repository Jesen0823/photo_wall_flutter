import 'package:flutter/material.dart';

/// 错误占位 Widget
///
/// 职责说明：
/// - 列表/页面加载失败时统一展示
/// - 提供"重试"按钮，由上层注入回调
/// - 由路由 errorBuilder 与列表 error 状态共用
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppErrorWidget extends StatelessWidget {
  /// 错误信息
  final String message;

  /// 重试回调
  final VoidCallback? onRetry;

  const AppErrorWidget({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: 64,
              color: theme.colorScheme.error,
            ),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
            if (onRetry != null) ...<Widget>[
              const SizedBox(height: 16),
              FilledButton(
                onPressed: onRetry,
                child: const Text('重试'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
