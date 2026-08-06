// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
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

@ProviderFor(ThemeModeController)
const themeModeControllerProvider = ThemeModeControllerProvider._();

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
final class ThemeModeControllerProvider
    extends $AsyncNotifierProvider<ThemeModeController, ThemeMode> {
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
  const ThemeModeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeModeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeModeControllerHash();

  @$internal
  @override
  ThemeModeController create() => ThemeModeController();
}

String _$themeModeControllerHash() =>
    r'5510175dcaedc550bb1c0842747b07b598d8ed29';

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

abstract class _$ThemeModeController extends $AsyncNotifier<ThemeMode> {
  FutureOr<ThemeMode> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ThemeMode>, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ThemeMode>, ThemeMode>,
              AsyncValue<ThemeMode>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
