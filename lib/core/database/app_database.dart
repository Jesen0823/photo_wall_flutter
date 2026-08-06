import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'database_connection.dart';
import 'tables/wall_cache_table.dart';

part 'app_database.g.dart';
part 'daos/wall_cache_dao.dart';

/// 应用数据库（drift）
///
/// 职责说明：
/// - 定义所有数据表与 DAO
/// - 通过 [connect()] 在移动端建立 SQLite 连接
/// - 通过 Riverpod Provider 单例化，便于测试替换
///
/// 设计模式：数据访问层入口 + 单例
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@DriftDatabase(tables: <Type>[WallCacheTable], daos: <Type>[WallCacheDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(connect());

  /// 测试用构造（注入自定义连接）
  AppDatabase.forTesting(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // TODO: 实现版本迁移逻辑
    },
  );
}

/// 数据库 Provider（全局单例）
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final AppDatabase db = AppDatabase();
  ref.onDispose(db.close);
  return db;
}
