import '../entities/publish_entity.dart';
import '../repositories/editor_repository.dart';

/// 发布照片用例
///
/// 职责说明：
/// - 封装"发布照片"业务逻辑
/// - 调用 [EditorRepository.publishPhoto]
/// - 可叠加图片上传、字段校验等逻辑
///
/// 设计模式：用例（Use Case）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PublishPhotoUseCase {
  final EditorRepository _repository;

  PublishPhotoUseCase(this._repository);

  Future<int> call(PublishEntity entity) => _repository.publishPhoto(entity);
}
