import 'package:flutter/material.dart';

/// 空数据占位 Widget
///
/// 职责说明：
/// - 列表数据为空时统一展示
/// - 支持自定义图标与提示
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppEmptyWidget extends StatelessWidget {
  /// 提示文字
  final String message;

  /// 自定义图标
  final IconData icon;

  /// 操作回调（如"去发布"）
  final VoidCallback? onAction;

  /// 操作按钮文字
  final String? actionLabel;

  const AppEmptyWidget({
    super.key,
    required this.message,
    this.icon = Icons.inbox_outlined,
    this.onAction,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, size: 64, color: Colors.grey),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
            if (onAction != null && actionLabel != null) ...<Widget>[
              const SizedBox(height: 16),
              FilledButton.tonal(
                onPressed: onAction,
                child: Text(actionLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
