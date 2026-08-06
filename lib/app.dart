import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_mode_provider.dart';
import 'l10n/app_localizations.dart';

/// 应用根 Widget
///
/// 职责说明：
/// - 配置 MaterialApp.router（go_router 集成）
/// - 配置主题（亮/暗 + 系统跟随）
/// - 配置国际化（中英文 + 系统跟随）
/// - 作为 ProviderScope 子节点，由 main.dart 启动
///
/// 设计模式：组合根（Composition Root）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class PhotoWallApp extends ConsumerWidget {
  const PhotoWallApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ThemeMode> themeMode =
        ref.watch(themeModeControllerProvider);

    return MaterialApp.router(
      title: '照片墙',
      debugShowCheckedModeBanner: false,

      // ---- 主题 ----
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode.value ?? ThemeMode.system,

      // ---- 国际化 ----
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,

      // ---- 路由 ----
      routerConfig: AppRouter.build(),
    );
  }
}
