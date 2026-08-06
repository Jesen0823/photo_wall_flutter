import '../entities/wall_detail_entity.dart';
import '../repositories/detail_repository.dart';

/// 获取详情用例
///
/// 职责说明：
/// - 封装"获取详情"业务逻辑
/// - 调用 [DetailRepository.getDetail]
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class GetWallDetailUseCase {
  final DetailRepository _repository;

  GetWallDetailUseCase(this._repository);

  /// 执行用例
  Future<WallDetailEntity> call(int id) => _repository.getDetail(id);
}
