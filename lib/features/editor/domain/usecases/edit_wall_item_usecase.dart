import '../entities/publish_entity.dart';
import '../repositories/editor_repository.dart';

/// 编辑已发布内容用例
///
/// 职责说明：
/// - 封装"编辑已发布内容"业务逻辑
/// - 调用 [EditorRepository.edit]
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class EditWallItemUseCase {
  final EditorRepository _repository;

  EditWallItemUseCase(this._repository);

  Future<void> call(PublishEntity entity) => _repository.edit(entity);
}
