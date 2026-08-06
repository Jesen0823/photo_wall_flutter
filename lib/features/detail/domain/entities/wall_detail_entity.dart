import '../../../home/domain/entities/wall_type.dart';

/// 留言/照片详情领域实体
///
/// 职责说明：
/// - 描述详情页业务数据（含评论列表扩展字段）
/// - 与列表 [WallItemEntity] 区分，承载详情页特有字段
/// - 由数据层 mapper 转换而来
///
/// 设计模式：领域实体（Domain Entity）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallDetailEntity {
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

  /// 评论数
  final int commentCount;

  /// 当前用户是否已点赞
  final bool isLiked;

  /// TODO: 评论列表字段（待后端确认接口）

  /// 构造函数
  const WallDetailEntity({
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
    required this.commentCount,
    required this.isLiked,
  });
}
