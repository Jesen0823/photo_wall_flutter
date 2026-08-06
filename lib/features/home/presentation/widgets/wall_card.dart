import 'package:flutter/material.dart';

import '../../domain/entities/wall_item_entity.dart';

/// 墙体卡片基类
///
/// 职责说明：
/// - 定义照片/留言卡片的公共结构（头像、名称、时间、操作栏）
/// - 由 [PhotoWallCard] / [MessageWallCard] 继承实现差异化布局
/// - 减少重复样板代码
///
/// 设计模式：模板方法（Template Method）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
abstract class WallCard extends StatelessWidget {
  /// 卡片数据
  final WallItemEntity item;

  /// 点赞回调
  final VoidCallback? onLike;

  /// 举报回调
  final VoidCallback? onReport;

  /// 撤回回调
  final VoidCallback? onRevoke;

  /// 点击回调
  final VoidCallback? onTap;

  const WallCard({
    super.key,
    required this.item,
    this.onLike,
    this.onReport,
    this.onRevoke,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(context),
              const SizedBox(height: 8),
              ...buildContent(context),
              const SizedBox(height: 8),
              _buildActions(context),
            ],
          ),
        ),
      ),
    );
  }

  /// 子类实现：内容区域
  List<Widget> buildContent(BuildContext context);

  /// 头部（头像 + 名称 + 时间）
  Widget _buildHeader(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(child: Icon(Icons.person)),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(item.name, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(item.moment.toIso8601String(),
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }

  /// 操作栏
  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _action(context, Icons.favorite_border, '点赞 ${item.likeCount}', onLike),
        _action(context, Icons.comment_outlined, '评论 ${item.commentCount}', null),
        _action(context, Icons.report_outlined, '举报', onReport),
      ],
    );
  }

  /// 单个操作按钮
  Widget _action(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback? onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, size: 18),
            const SizedBox(width: 4),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
