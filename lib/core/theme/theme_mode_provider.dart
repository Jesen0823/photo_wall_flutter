import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/storage_constants.dart';
import '../storage/local_storage.dart';

part 'theme_mode_provider.g.dart';

/// 主题模式 Provider
///
/// 职责说明：
/// - 持有当前 [ThemeMode]（system / light / dark）
/// - 持久化到 SharedPreferences，下次启动恢复
/// - 暴露 [toggle] / [setMode] 方法供 UI 切换
///
/// 设计模式：状态持有 + 持久化（State + Persistence）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  @override
  Future<ThemeMode> build() async {
    final LocalStorage storage = await ref.read(localStorageProvider.future);
    final String? saved = await storage.read(StorageConstants.themeMode);
    return _parseMode(saved);
  }

  /// 切换主题模式
  Future<void> setMode(ThemeMode mode) async {
    state = AsyncData(mode);
    final LocalStorage storage = await ref.read(localStorageProvider.future);
    await storage.write(StorageConstants.themeMode, mode.name);
  }

  /// 在亮色与暗色之间切换
  Future<void> toggle() async {
    final ThemeMode current = state.value ?? ThemeMode.system;
    final ThemeMode next = current == ThemeMode.dark
        ? ThemeMode.light
        : ThemeMode.dark;
    await setMode(next);
  }

  /// 解析存储字符串为 ThemeMode
  ThemeMode _parseMode(String? value) {
    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
