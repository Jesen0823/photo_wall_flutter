import '../../../home/domain/entities/wall_type.dart';

/// 发布/编辑领域实体
///
/// 职责说明：
/// - 描述用户编辑/发布内容时的领域数据
/// - 含字段：类型、内容、图片URL、标签、颜色等
/// - 由数据层 mapper 转换为请求模型
///
/// 设计模式：领域实体（Domain Entity）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PublishEntity {
  /// 类型
  final WallType type;

  /// 文本内容
  final String message;

  /// 图片 URL（照片类型时使用）
  final String? imgUrl;

  /// 标签
  final int label;

  /// 卡片颜色索引
  final int color;

  /// 用户 id
  final String userId;

  /// 编辑模式下的内容 id（null 表示新建）
  final int? editingId;

  /// 构造函数
  const PublishEntity({
    required this.type,
    required this.message,
    this.imgUrl,
    required this.label,
    required this.color,
    required this.userId,
    this.editingId,
  });

  /// 是否为编辑模式
  bool get isEditing => editingId != null;
}
