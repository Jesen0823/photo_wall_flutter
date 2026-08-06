import '../entities/publish_entity.dart';
import '../repositories/editor_repository.dart';

/// 发布留言用例
///
/// 职责说明：
/// - 封装"发布留言"业务逻辑
/// - 调用 [EditorRepository.publishMessage]
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PublishMessageUseCase {
  final EditorRepository _repository;

  PublishMessageUseCase(this._repository);

  Future<int> call(PublishEntity entity) => _repository.publishMessage(entity);
}
