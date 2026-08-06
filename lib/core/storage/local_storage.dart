import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage.g.dart';

/// 本地 KV 存储封装
///
/// 职责说明：
/// - 封装 SharedPreferences，提供类型安全的读写
/// - 供主题模式、语言、token 等简单数据持久化使用
/// - 复杂数据请使用 drift 数据库
///
/// 设计模式：适配器 + 单例
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class LocalStorage {
  final SharedPreferences _prefs;

  LocalStorage(this._prefs);

  /// 读取字符串
  Future<String?> read(String key) async => _prefs.getString(key);

  /// 写入字符串
  Future<bool> write(String key, String value) => _prefs.setString(key, value);

  /// 读取布尔
  Future<bool?> readBool(String key) async => _prefs.getBool(key);

  /// 写入布尔
  Future<bool> writeBool(String key, bool value) => _prefs.setBool(key, value);

  /// 移除
  Future<bool> remove(String key) => _prefs.remove(key);

  /// 清空（慎用）
  Future<bool> clear() => _prefs.clear();
}

/// LocalStorage Provider
///
/// 初始化时需先调用 SharedPreferences.getInstance()。
@Riverpod(keepAlive: true)
Future<LocalStorage> localStorage(Ref ref) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return LocalStorage(prefs);
}
