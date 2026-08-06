import '../../../../core/error/error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/wall_item_entity.dart';
import '../../domain/entities/wall_type.dart';
import '../../domain/repositories/wall_repository.dart';
import '../datasources/wall_local_data_source.dart';
import '../datasources/wall_remote_data_source.dart';
import '../mappers/wall_mapper.dart';
import '../models/wall_item_model.dart';

/// 留言/照片墙仓库实现（缓存优先策略）
///
/// 职责说明：
/// - 实现 [WallRepository] 契约
/// - 采用 NetworkBoundResource 模式：先返回缓存，后台拉取网络数据更新
/// - 弱网/无网时仅返回缓存
/// - 异常统一通过 [ErrorHandler] 转换为 [Failure]
///
/// 设计模式：仓库（Repository）+ 策略（缓存优先 / 仅网络 / 仅缓存）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallRepositoryImpl implements WallRepository {
  final WallRemoteDataSource _remote;
  final WallLocalDataSource _local;
  final NetworkInfo _networkInfo;
  final WallMapper _mapper;

  WallRepositoryImpl({
    required this._remote,
    required this._local,
    required this._networkInfo,
    WallMapper? mapper,
  }) : _mapper = mapper ?? WallMapper();

  @override
  Future<List<WallItemEntity>> findPage({
    required WallType type,
    required int page,
    required int pageSize,
    required String userId,
    int label = 5,
  }) async {
    try {
      final bool online = await _networkInfo.isConnected;

      // 无网：仅返回缓存
      if (!online) {
        return _loadFromCache(type, page, pageSize);
      }

      // 在线：拉取网络数据并更新缓存
      final List<WallItemModel> models = await _remote.findPage(
        type: type,
        page: page,
        pageSize: pageSize,
        userId: userId,
        label: label,
      );
      // TODO: 将 models 写入 _local 缓存
      return _mapper.toEntityList(models);
    } on Object catch (e) {
      // 网络失败：尝试降级到缓存
      try {
        return _loadFromCache(type, page, pageSize);
      } on Object {
        throw ErrorHandler.toFailure(e);
      }
    }
  }

  /// 从缓存加载并转换为 entity
  Future<List<WallItemEntity>> _loadFromCache(
    WallType type,
    int page,
    int pageSize,
  ) async {
    // TODO: 实现 cache data → entity 的转换
    throw UnimplementedError();
  }

  @override
  Future<void> like(int id) => _remote.like(id);

  @override
  Future<void> report(int id) => _remote.report(id);

  @override
  Future<void> revoke(int id) => _remote.revoke(id);

  @override
  Future<void> clearCache() async {
    await _local.clearAll();
  }
}
