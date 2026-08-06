import 'env_config.dart';
import 'flavor.dart';

/// 应用全局配置
///
/// 职责说明：
/// - 持有全局 [EnvConfig] 实例，供任意模块读取
/// - 提供默认配置切换入口
///
/// 设计模式：环境上下文（Context）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppConfig {
  /// 当前环境配置
  static EnvConfig _env = EnvConfig.dev();

  /// 获取当前环境配置
  static EnvConfig get env => _env;

  /// 初始化环境配置（在 main 中调用）
  static void init({Flavor flavor = Flavor.dev}) {
    switch (flavor) {
      case Flavor.dev:
      case Flavor.staging:
        _env = EnvConfig.dev();
        break;
      case Flavor.prod:
        _env = EnvConfig.prod();
        break;
    }
  }

  // TODO: 补充其他全局配置（如渠道、版本号读取等）

  /// 私有构造，禁止实例化
  const AppConfig._();
}
