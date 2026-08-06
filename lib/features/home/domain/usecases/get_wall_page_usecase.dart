import '../entities/wall_item_entity.dart';
import '../entities/wall_type.dart';
import '../repositories/wall_repository.dart';

/// 分页查询留言/照片墙列表用例
///
/// 职责说明：
/// - 封装"分页查询首页列表"的业务逻辑
/// - 调用 [WallRepository.findPage]，可能叠加缓存策略
/// - 单一职责，便于复用与测试
///
/// 设计模式：用例（Use Case）+ 单一职责
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class GetWallPageUseCase {
  final WallRepository _repository;

  GetWallPageUseCase(this._repository);

  /// 执行用例
  Future<List<WallItemEntity>> call({
    required WallType type,
    required int page,
    required int pageSize,
    required String userId,
    int label = 5,
  }) {
    // TODO: 可在此叠加业务规则（如最小 pageSize 校验、用户身份校验等）
    return _repository.findPage(
      type: type,
      page: page,
      pageSize: pageSize,
      userId: userId,
      label: label,
    );
  }
}
