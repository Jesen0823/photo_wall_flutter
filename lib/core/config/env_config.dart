import 'flavor.dart';

/// 环境配置
///
/// 职责说明：
/// - 根据当前 [Flavor] 提供对应的 baseUrl、是否启用日志等配置
/// - 启动时由 main.dart 注入，全局共享
///
/// 设计模式：单例（通过 Riverpod Provider 提供）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class EnvConfig {
  /// 当前构建变体
  final Flavor flavor;

  /// API 基础地址
  final String baseUrl;

  /// 是否开启详细日志
  final bool enableLogging;

  /// 是否开启 SQL 日志（drift）
  final bool enableSqlLogging;

  /// 是否启用重试拦截器
  final bool enableRetry;

  /// 构造函数
  const EnvConfig({
    required this.flavor,
    required this.baseUrl,
    required this.enableLogging,
    required this.enableSqlLogging,
    required this.enableRetry,
  });

  /// dev 环境配置
  factory EnvConfig.dev() => const EnvConfig(
        flavor: Flavor.dev,
        baseUrl: 'http://localhost:8080/api',
        enableLogging: true,
        enableSqlLogging: true,
        enableRetry: true,
      );

  /// prod 环境配置
  factory EnvConfig.prod() => const EnvConfig(
        flavor: Flavor.prod,
        baseUrl: 'https://api.example.com/api',
        enableLogging: false,
        enableSqlLogging: false,
        enableRetry: true,
      );

  /// 是否为开发环境
  bool get isDev => flavor == Flavor.dev;

  /// 是否为生产环境
  bool get isProd => flavor == Flavor.prod;
}
