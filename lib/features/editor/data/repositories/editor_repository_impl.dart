import '../../../../core/error/error_handler.dart';
import '../../domain/entities/publish_entity.dart';
import '../../domain/repositories/editor_repository.dart';
import '../datasources/editor_remote_data_source.dart';
import '../models/publish_request.dart';

/// 编辑/发布仓库实现
///
/// 职责说明：
/// - 实现 [EditorRepository] 契约
/// - 调用 [EditorRemoteDataSource] 完成网络请求
/// - entity → request model 的转换在此完成
///
/// 设计模式：仓库（Repository）+ 适配器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class EditorRepositoryImpl implements EditorRepository {
  final EditorRemoteDataSource _remote;

  EditorRepositoryImpl(this._remote);

  @override
  Future<int> publishPhoto(PublishEntity entity) => _publish(entity);

  @override
  Future<int> publishMessage(PublishEntity entity) => _publish(entity);

  @override
  Future<void> edit(PublishEntity entity) async {
    try {
      await _remote.edit(_toRequest(entity));
    } on Object catch (e) {
      throw ErrorHandler.toFailure(e);
    }
  }

  /// 通用发布
  Future<int> _publish(PublishEntity entity) async {
    try {
      return await _remote.publish(_toRequest(entity));
    } on Object catch (e) {
      throw ErrorHandler.toFailure(e);
    }
  }

  /// entity → request
  PublishRequest _toRequest(PublishEntity e) => PublishRequest(
        type: e.type.value,
        message: e.message,
        imgUrl: e.imgUrl,
        label: e.label,
        color: e.color,
        userId: e.userId,
        id: e.editingId,
      );
}
