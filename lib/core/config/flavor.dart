/// 构建变体枚举
///
/// 职责说明：
/// - 区分 dev / staging / prod 三种构建环境
/// - 用于配置不同的 baseUrl、日志级别、特性开关等
///
/// 设计模式：Enum + 自包含属性
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
enum Flavor {
  /// 开发环境
  dev,

  /// 预发布环境
  staging,

  /// 生产环境
  prod,
}
