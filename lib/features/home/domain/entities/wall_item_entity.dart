import 'wall_type.dart';

/// 留言/照片墙领域实体
///
/// 职责说明：
/// - 表达首页列表项的业务领域模型
/// - 与数据层 [WallItemModel] 解耦，屏蔽后端字段细节
/// - 由 [WallMapper] 从 model 转换而来
///
/// 设计模式：领域实体（Domain Entity）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallItemEntity {
  /// 业务 id
  final int id;

  /// 类型
  final WallType type;

  /// 内容
  final String message;

  /// 发布者名称
  final String name;

  /// 发布者 userId
  final String userId;

  /// 发布时间
  final DateTime moment;

  /// 标签
  final int label;

  /// 卡片颜色索引
  final int color;

  /// 图片 URL
  final String? imgUrl;

  /// 点赞数
  final int likeCount;

  /// 举报数
  final int reportCount;

  /// 撤回数
  final int revokeCount;

  /// 评论数
  final int commentCount;

  /// 当前用户是否已点赞
  final bool isLiked;

  /// 构造函数
  const WallItemEntity({
    required this.id,
    required this.type,
    required this.message,
    required this.name,
    required this.userId,
    required this.moment,
    required this.label,
    required this.color,
    this.imgUrl,
    required this.likeCount,
    required this.reportCount,
    required this.revokeCount,
    required this.commentCount,
    required this.isLiked,
  });
}
