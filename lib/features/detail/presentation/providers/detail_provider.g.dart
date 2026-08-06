// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 详情页 Notifier
///
/// 职责说明：
/// - 管理详情页状态：加载详情、点赞、举报等
/// - 调用 [GetWallDetailUseCase]
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

@ProviderFor(DetailNotifier)
const detailProvider = DetailNotifierProvider._();

/// 详情页 Notifier
///
/// 职责说明：
/// - 管理详情页状态：加载详情、点赞、举报等
/// - 调用 [GetWallDetailUseCase]
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
final class DetailNotifierProvider
    extends $NotifierProvider<DetailNotifier, DetailState> {
  /// 详情页 Notifier
  ///
  /// 职责说明：
  /// - 管理详情页状态：加载详情、点赞、举报等
  /// - 调用 [GetWallDetailUseCase]
  ///
  /// 设计模式：ViewModel（Riverpod Notifier）
  ///
  /// 作者：photo_wall_flutter team
  /// 日期：2026-08-05
  const DetailNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'detailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailNotifierHash();

  @$internal
  @override
  DetailNotifier create() => DetailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailState>(value),
    );
  }
}

String _$detailNotifierHash() => r'ffe8bb6d69799ad8caf505466e547d983d434b5f';

/// 详情页 Notifier
///
/// 职责说明：
/// - 管理详情页状态：加载详情、点赞、举报等
/// - 调用 [GetWallDetailUseCase]
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

abstract class _$DetailNotifier extends $Notifier<DetailState> {
  DetailState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DetailState, DetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DetailState, DetailState>,
              DetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
