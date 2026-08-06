/// 校验工具
///
/// 职责说明：
/// - 提供表单输入校验（必填、长度、邮箱、手机号等）
/// - 返回 null 表示校验通过，否则返回错误提示
/// - 供编辑页 TextField 的 validator 使用
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ValidatorUtils {
  /// 必填校验
  static String? required(String? value, {String? message}) {
    if (value == null || value.trim().isEmpty) {
      return message ?? '此项必填';
    }
    return null;
  }

  /// 长度校验
  static String? length(
    String? value, {
    required int min,
    int? max,
    String? message,
  }) {
    if (value == null) return message ?? '输入无效';
    if (value.length < min) return message ?? '至少 $min 个字符';
    if (max != null && value.length > max) return message ?? '最多 $max 个字符';
    return null;
  }

  /// TODO: 邮箱 / 手机号 / URL 校验

  /// 私有构造，禁止实例化
  const ValidatorUtils._();
}
