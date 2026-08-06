import '../../../../core/database/app_database.dart';
import '../../domain/entities/wall_type.dart';

/// 留言/照片墙本地数据源（drift 缓存）
///
/// 职责说明：
/// - 封装 WallCacheDao 的访问，提供类型/分页查询
/// - 由 [WallRepositoryImpl] 调用，配合远程数据源实现"缓存优先"
/// - 弱网环境下优先返回缓存数据
///
/// 设计模式：数据源（DataSource）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class WallLocalDataSource {
  final WallCacheDao _dao;

  WallLocalDataSource(AppDatabase db) : _dao = db.wallCacheDao;

  /// 查询缓存分页
  Future<List<WallCacheTableData>> findPage({
    required WallType type,
    required int page,
    required int pageSize,
  }) {
    return _dao.queryPage(
      type: type.value,
      page: page,
      pageSize: pageSize,
    );
  }

  /// 写入缓存
  Future<void> upsertAll(List<WallCacheTableCompanion> items) {
    return _dao.upsertAll(items);
  }

  /// 清空指定类型缓存
  Future<int> clearByType(WallType type) {
    return _dao.clearByType(type.value);
  }

  /// 清空所有缓存
  Future<void> clearAll() async {
    // TODO: 实现清空全部墙体缓存（含 message + photo）
    throw UnimplementedError();
  }
}
