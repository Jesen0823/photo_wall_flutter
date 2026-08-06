import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/config/app_config.dart';

/// 应用入口
///
/// 职责说明：
/// - 初始化环境配置（[AppConfig.init]）
/// - 包裹 [ProviderScope] 启动 Riverpod
/// - 运行 [PhotoWallApp] 根 Widget
///
/// 注意：
/// - 如需 flavor 区分，可拆分 main_dev.dart / main_prod.dart
/// - 当前阶段仅使用单一入口（参考计划 A8）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
Future<void> main() async {
  // 确保 WidgetsBinding 初始化（用于插件初始化）
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化环境配置
  AppConfig.init();

  // TODO: 初始化其他全局服务（如 Sentry / Firebase / 推送等）

  runApp(
    const ProviderScope(
      child: PhotoWallApp(),
    ),
  );
}
