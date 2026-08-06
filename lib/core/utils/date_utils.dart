/// 日期工具
///
/// 职责说明：
/// - 提供 ISO 8601 字符串与 DateTime 互转
/// - 提供相对时间格式化（"3 分钟前"、"昨天"等）
/// - 配合 intl 实现多语言日期格式
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppDateUtils {
  /// 解析 ISO 8601 字符串
  static DateTime? parseIso(String? iso) {
    if (iso == null || iso.isEmpty) return null;
    return DateTime.tryParse(iso);
  }

  /// 格式化为相对时间
  ///
  /// TODO: 实现完整的相对时间格式化（刚刚 / N 分钟前 / N 小时前 / 昨天 / 日期）
  static String formatRelative(DateTime time, {DateTime? now}) {
    final DateTime reference = now ?? DateTime.now();
    final Duration diff = reference.difference(time);

    if (diff.inMinutes < 1) return '刚刚';
    if (diff.inMinutes < 60) return '${diff.inMinutes} 分钟前';
    if (diff.inHours < 24) return '${diff.inHours} 小时前';
    if (diff.inDays < 7) return '${diff.inDays} 天前';
    return '${time.year}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}';
  }

  /// 私有构造，禁止实例化
  const AppDateUtils._();
}
