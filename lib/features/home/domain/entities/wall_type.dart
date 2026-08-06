/// 留言/照片类型枚举
///
/// 职责说明：
/// - 区分照片墙与留言墙内容类型
/// - 与后端 `type` 字段对应：0=留言，1=照片
/// - 供 UI 切换 Tab 与 Repository 查询使用
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
enum WallType {
  /// 留言
  message(0),

  /// 照片
  photo(1);

  /// 后端字段值
  final int value;

  const WallType(this.value);

  /// 从后端字段值解析
  static WallType fromValue(int value) {
    switch (value) {
      case 1:
        return WallType.photo;
      case 0:
      default:
        return WallType.message;
    }
  }
}
