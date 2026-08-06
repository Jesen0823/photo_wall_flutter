part of '../app_database.dart';

/// 墙体缓存 DAO
///
/// 职责说明：
/// - 封装 WallCacheTable 的 CRUD 操作
/// - 提供"按 type + page + pageSize 查询缓存"等业务方法
/// - 配合 [WallRepositoryImpl] 实现"缓存优先"策略
///
/// 设计模式：数据访问对象（DAO）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@DriftAccessor(tables: <Type>[WallCacheTable])
class WallCacheDao extends DatabaseAccessor<AppDatabase>
    with _$WallCacheDaoMixin {
  WallCacheDao(super.db);

  /// 按类型与分页查询缓存
  Future<List<WallCacheTableData>> queryPage({
    required int type,
    required int page,
    required int pageSize,
  }) {
    // TODO: 实现按 type + page + pageSize 查询，按 moment desc 排序
    throw UnimplementedError();
  }

  /// 写入或更新缓存（按 remoteId upsert）
  Future<void> upsertAll(List<WallCacheTableCompanion> items) {
    // TODO: 实现 batch upsert
    throw UnimplementedError();
  }

  /// 清空指定类型的缓存
  Future<int> clearByType(int type) {
    // TODO: 实现按 type 删除
    throw UnimplementedError();
  }

  /// 删除过期缓存（cachedAt 早于阈值）
  Future<int> clearExpired(Duration threshold) {
    // TODO: 实现过期清理
    throw UnimplementedError();
  }
}
