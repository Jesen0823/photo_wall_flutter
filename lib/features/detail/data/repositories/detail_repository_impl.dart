import '../../../../core/error/error_handler.dart';
import '../../../home/domain/entities/wall_type.dart';
import '../../domain/entities/wall_detail_entity.dart';
import '../../domain/repositories/detail_repository.dart';
import '../datasources/detail_remote_data_source.dart';
import '../models/detail_response.dart';

/// 详情仓库实现
///
/// 职责说明：
/// - 实现 [DetailRepository] 契约
/// - 调用 [DetailRemoteDataSource] 获取数据并转换为领域实体
/// - 异常通过 [ErrorHandler] 统一转换
///
/// 设计模式：仓库（Repository）+ 适配器
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class DetailRepositoryImpl implements DetailRepository {
  final DetailRemoteDataSource _remote;

  DetailRepositoryImpl(this._remote);

  @override
  Future<WallDetailEntity> getDetail(int id) async {
    try {
      final DetailResponse response = await _remote.getDetail(id);
      return _toEntity(response);
    } on Object catch (e) {
      throw ErrorHandler.toFailure(e);
    }
  }

  /// model → entity
  WallDetailEntity _toEntity(DetailResponse r) {
    return WallDetailEntity(
      id: r.id,
      type: WallType.fromValue(r.type),
      message: r.message ?? '',
      name: r.name,
      userId: r.userId,
      moment: DateTime.tryParse(r.moment) ?? DateTime.now(),
      label: r.label,
      color: r.color,
      imgUrl: r.imgUrl,
      likeCount: r.like.isEmpty ? 0 : r.like.first.count,
      commentCount: r.comcount.isEmpty ? 0 : r.comcount.first.count,
      isLiked: false,
    );
  }
}
