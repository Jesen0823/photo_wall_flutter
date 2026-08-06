import '../../domain/entities/wall_item_entity.dart';
import '../../domain/entities/wall_type.dart';
import '../models/count_model.dart';
import '../models/wall_item_model.dart';

/// 留言/照片墙模型映射器
///
/// 职责说明：
/// - 在数据层模型 [WallItemModel] 与领域实体 [WallItemEntity] 之间双向转换
/// - 屏蔽后端字段细节（如 like 数组取首元素 count）
/// - 单一职责，便于单元测试
///
/// 设计模式：映射器（Mapper）+ 适配器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallMapper {
  /// model → entity
  WallItemEntity toEntity(WallItemModel model) {
    return WallItemEntity(
      id: model.id,
      type: WallType.fromValue(model.type),
      message: model.message ?? '',
      name: model.name,
      userId: model.userId,
      moment: DateTime.tryParse(model.moment) ?? DateTime.now(),
      label: model.label,
      color: model.color,
      imgUrl: model.imgUrl,
      likeCount: _firstCount(model.like),
      reportCount: _firstCount(model.report),
      revokeCount: _firstCount(model.revoke),
      commentCount: _firstCount(model.comcount),
      isLiked: _firstCount(model.islike) > 0,
    );
  }

  /// model 列表 → entity 列表
  List<WallItemEntity> toEntityList(List<WallItemModel> models) =>
      models.map(toEntity).toList();

  /// 取数组首元素的 count 字段，空数组返回 0
  int _firstCount(List<CountModel> list) =>
      list.isEmpty ? 0 : list.first.count;
}
