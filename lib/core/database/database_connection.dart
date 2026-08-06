import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// 数据库连接任务
///
/// 职责说明：
/// - 在移动端（Android/iOS）使用文件系统作为 SQLite 存储
/// - 在 Web 端使用 drift 的 wasm 实现（暂不支持，需后续扩展）
/// - 提供连接懒加载与连接池
///
/// 设计模式：工厂方法
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
LazyDatabase connect() {
  return LazyDatabase(() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = p.join(dir.path, 'photo_wall.sqlite');
    return NativeDatabase.createInBackground(File(path));
  });
}
