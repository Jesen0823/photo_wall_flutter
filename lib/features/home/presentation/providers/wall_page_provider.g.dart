// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 留言/照片墙列表 Notifier
///
/// 职责说明：
/// - 管理首页列表状态：刷新、加载更多、点赞、举报、撤回
/// - 调用各 UseCase 完成业务操作
/// - 通过 [WallPageState] 暴露 UI 状态
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

@ProviderFor(WallPageNotifier)
const wallPageProvider = WallPageNotifierProvider._();

/// 留言/照片墙列表 Notifier
///
/// 职责说明：
/// - 管理首页列表状态：刷新、加载更多、点赞、举报、撤回
/// - 调用各 UseCase 完成业务操作
/// - 通过 [WallPageState] 暴露 UI 状态
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
final class WallPageNotifierProvider
    extends $NotifierProvider<WallPageNotifier, WallPageState> {
  /// 留言/照片墙列表 Notifier
  ///
  /// 职责说明：
  /// - 管理首页列表状态：刷新、加载更多、点赞、举报、撤回
  /// - 调用各 UseCase 完成业务操作
  /// - 通过 [WallPageState] 暴露 UI 状态
  ///
  /// 设计模式：ViewModel（Riverpod Notifier）
  ///
  /// 作者：photo_wall_flutter team
  /// 日期：2026-08-05
  const WallPageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wallPageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wallPageNotifierHash();

  @$internal
  @override
  WallPageNotifier create() => WallPageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WallPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WallPageState>(value),
    );
  }
}

String _$wallPageNotifierHash() => r'bfbf109f548a3757300d54f01e20c976f7850947';

/// 留言/照片墙列表 Notifier
///
/// 职责说明：
/// - 管理首页列表状态：刷新、加载更多、点赞、举报、撤回
/// - 调用各 UseCase 完成业务操作
/// - 通过 [WallPageState] 暴露 UI 状态
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

abstract class _$WallPageNotifier extends $Notifier<WallPageState> {
  WallPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<WallPageState, WallPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WallPageState, WallPageState>,
              WallPageState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
