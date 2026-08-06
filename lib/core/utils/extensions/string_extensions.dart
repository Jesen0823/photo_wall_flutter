/// String 扩展
///
/// 职责说明：
/// - 提供字符串常用工具方法（判空、截断、首字母大写等）
/// - 减少重复样板代码
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
extension StringExtensions on String {
  /// 是否为空白
  bool get isBlank => trim().isEmpty;

  /// 是否非空白
  bool get isNotBlank => !isBlank;

  /// 截断到指定长度并加省略号
  String truncate(int max) {
    if (length <= max) return this;
    return '${substring(0, max)}...';
  }

  /// 首字母大写
  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

/// 可空 String 扩展
extension NullableStringExtensions on String? {
  /// 是否为 null 或空白
  bool get isNullOrBlank => this == null || this!.isBlank;
}
