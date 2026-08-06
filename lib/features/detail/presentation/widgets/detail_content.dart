import 'package:flutter/material.dart';

import '../../../../core/widgets/network_image_widget.dart';
import '../../domain/entities/wall_detail_entity.dart';

/// 详情内容区
///
/// 职责说明：
/// - 展示照片大图或留言全文
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DetailContent extends StatelessWidget {
  final WallDetailEntity detail;

  const DetailContent({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (detail.imgUrl != null && detail.imgUrl!.isNotEmpty) ...<Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: NetworkImageWidget(
                url: detail.imgUrl,
                width: double.infinity,
                height: 280,
              ),
            ),
            const SizedBox(height: 12),
          ],
          Text(detail.message, style: const TextStyle(height: 1.6)),
        ],
      ),
    );
  }
}
