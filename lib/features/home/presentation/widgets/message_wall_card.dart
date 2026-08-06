import 'package:flutter/material.dart';

import 'wall_card.dart';

/// 留言墙卡片
///
/// 职责说明：
/// - 展示留言类型卡片（彩色背景 + 文字）
/// - 设计稿：App端设计-首页-留言墙.jpg
/// - 继承 [WallCard] 模板，差异化实现内容区域
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class MessageWallCard extends WallCard {
  const MessageWallCard({
    super.key,
    required super.item,
    super.onLike,
    super.onReport,
    super.onRevoke,
    super.onTap,
  });

  @override
  List<Widget> buildContent(BuildContext context) {
    return <Widget>[
      Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _cardColor(item.color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(item.message, style: const TextStyle(height: 1.5)),
      ),
    ];
  }

  /// 根据颜色索引返回卡片背景色
  Color _cardColor(int index) {
    const List<Color> colors = <Color>[
      Color(0xFFFFCDD2),
      Color(0xFFFFF9C4),
      Color(0xFFC8E6C9),
      Color(0xFFB3E5FC),
      Color(0xFFE1BEE7),
    ];
    return colors[index % colors.length];
  }
}
