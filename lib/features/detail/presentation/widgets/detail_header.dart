import 'package:flutter/material.dart';

import '../../domain/entities/wall_detail_entity.dart';

/// 详情头部
///
/// 职责说明：
/// - 展示发布者头像、名称、时间
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DetailHeader extends StatelessWidget {
  final WallDetailEntity detail;

  const DetailHeader({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          const CircleAvatar(radius: 24, child: Icon(Icons.person)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(detail.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                Text(detail.moment.toIso8601String(),
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
