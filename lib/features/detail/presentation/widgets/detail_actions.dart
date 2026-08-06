import 'package:flutter/material.dart';

import '../../domain/entities/wall_detail_entity.dart';

/// 详情互动栏
///
/// 职责说明：
/// - 提供点赞、评论、举报、撤回操作
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DetailActions extends StatelessWidget {
  final WallDetailEntity detail;

  const DetailActions({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _action(Icons.favorite_border, '点赞 ${detail.likeCount}'),
          _action(Icons.comment_outlined, '评论 ${detail.commentCount}'),
          _action(Icons.report_outlined, '举报'),
        ],
      ),
    );
  }

  Widget _action(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
