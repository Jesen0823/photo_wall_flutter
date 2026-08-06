/// 本地存储 key 常量
///
/// 职责说明：
/// - 集中定义 SharedPreferences 存储使用的 key
/// - 避免字符串硬编码导致 key 冲突或拼写错误
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class StorageConstants {
  /// 主题模式 key
  static const String themeMode = 'app.theme.mode';

  /// 语言设置 key
  static const String locale = 'app.locale';

  /// 用户 token key（预留）
  static const String userToken = 'app.user.token';

  // TODO: 按需补充其他存储 key

  /// 私有构造，禁止实例化
  const StorageConstants._();
}
