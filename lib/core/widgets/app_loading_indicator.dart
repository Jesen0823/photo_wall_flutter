import 'package:flutter/material.dart';

/// 加载指示器
///
/// 职责说明：
/// - 提供统一样式的加载指示器
/// - 支持全屏遮罩与内嵌两种模式
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppLoadingIndicator extends StatelessWidget {
  /// 是否全屏遮罩
  final bool overlay;

  /// 提示文字
  final String? message;

  const AppLoadingIndicator({
    super.key,
    this.overlay = false,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    final Widget indicator = Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const CircularProgressIndicator(),
        if (message != null) ...<Widget>[
          const SizedBox(height: 12),
          Text(message!),
        ],
      ],
    );

    if (!overlay) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: indicator,
      );
    }

    return Container(
      color: Colors.black38,
      alignment: Alignment.center,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: indicator,
        ),
      ),
    );
  }
}
