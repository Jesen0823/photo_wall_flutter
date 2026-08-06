import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// 日志工具
///
/// 职责说明：
/// - 封装 logger 包，提供统一日志入口
/// - dev 环境输出到 console，prod 环境可接入日志平台
/// - 提供分级日志（debug / info / warning / error）
///
/// 设计模式：单例 + 门面（Facade）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class AppLogger {
  static final Logger _logger = Logger(
    filter: ProductionFilter(),
    printer: PrettyPrinter(
      methodCount: 0,
      lineLength: 100,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  /// debug 日志
  static void d(dynamic message) {
    if (kDebugMode) _logger.d(message);
  }

  /// info 日志
  static void i(dynamic message) => _logger.i(message);

  /// warning 日志
  static void w(dynamic message) => _logger.w(message);

  /// error 日志
  static void e(dynamic message, {Object? error, StackTrace? stackTrace}) =>
      _logger.e(message, error: error, stackTrace: stackTrace);

  /// 私有构造，禁止实例化
  const AppLogger._();
}
