import 'package:flutter/material.dart';

import '../../../../core/widgets/network_image_widget.dart';
import 'wall_card.dart';

/// 照片墙卡片
///
/// 职责说明：
/// - 展示照片类型卡片（图片 + 标题 + 操作栏）
/// - 设计稿：App端设计-首页-照片墙.jpg
/// - 继承 [WallCard] 模板，差异化实现内容区域
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PhotoWallCard extends WallCard {
  const PhotoWallCard({
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
      if (item.imgUrl != null && item.imgUrl!.isNotEmpty)
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: NetworkImageWidget(
            url: item.imgUrl,
            width: double.infinity,
            height: 200,
          ),
        ),
      if (item.message.isNotEmpty) ...<Widget>[
        const SizedBox(height: 8),
        Text(item.message, maxLines: 2, overflow: TextOverflow.ellipsis),
      ],
    ];
  }
}
