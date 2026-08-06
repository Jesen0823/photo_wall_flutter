// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// =============================================================================
/// 仓库层 Provider
/// =============================================================================
/// 注入 DataSource 与 NetworkInfo，构造 Repository 实例。
/// =============================================================================

@ProviderFor(wallRepository)
const wallRepositoryProvider = WallRepositoryProvider._();

/// =============================================================================
/// 仓库层 Provider
/// =============================================================================
/// 注入 DataSource 与 NetworkInfo，构造 Repository 实例。
/// =============================================================================

final class WallRepositoryProvider
    extends $FunctionalProvider<WallRepository, WallRepository, WallRepository>
    with $Provider<WallRepository> {
  /// =============================================================================
  /// 仓库层 Provider
  /// =============================================================================
  /// 注入 DataSource 与 NetworkInfo，构造 Repository 实例。
  /// =============================================================================
  const WallRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wallRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wallRepositoryHash();

  @$internal
  @override
  $ProviderElement<WallRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WallRepository create(Ref ref) {
    return wallRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WallRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WallRepository>(value),
    );
  }
}

String _$wallRepositoryHash() => r'6e8fd96dbfcc7bb5eb412237a05de80ce96e6124';

@ProviderFor(detailRepository)
const detailRepositoryProvider = DetailRepositoryProvider._();

final class DetailRepositoryProvider
    extends
        $FunctionalProvider<
          DetailRepository,
          DetailRepository,
          DetailRepository
        >
    with $Provider<DetailRepository> {
  const DetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'detailRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailRepositoryHash();

  @$internal
  @override
  $ProviderElement<DetailRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DetailRepository create(Ref ref) {
    return detailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailRepository>(value),
    );
  }
}

String _$detailRepositoryHash() => r'30fbca56c30b1df3ab4de7f5bcc7ceae2c119174';

@ProviderFor(editorRepository)
const editorRepositoryProvider = EditorRepositoryProvider._();

final class EditorRepositoryProvider
    extends
        $FunctionalProvider<
          EditorRepository,
          EditorRepository,
          EditorRepository
        >
    with $Provider<EditorRepository> {
  const EditorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editorRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editorRepositoryHash();

  @$internal
  @override
  $ProviderElement<EditorRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EditorRepository create(Ref ref) {
    return editorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditorRepository>(value),
    );
  }
}

String _$editorRepositoryHash() => r'f64e49d06ab87c91490665dc6b8b9783efc453bb';

/// =============================================================================
/// 用例层 Provider
/// =============================================================================
/// 由 Repository 构造各 UseCase，供 ViewModel 调用。
/// =============================================================================

@ProviderFor(getWallPageUseCase)
const getWallPageUseCaseProvider = GetWallPageUseCaseProvider._();

/// =============================================================================
/// 用例层 Provider
/// =============================================================================
/// 由 Repository 构造各 UseCase，供 ViewModel 调用。
/// =============================================================================

final class GetWallPageUseCaseProvider
    extends
        $FunctionalProvider<
          GetWallPageUseCase,
          GetWallPageUseCase,
          GetWallPageUseCase
        >
    with $Provider<GetWallPageUseCase> {
  /// =============================================================================
  /// 用例层 Provider
  /// =============================================================================
  /// 由 Repository 构造各 UseCase，供 ViewModel 调用。
  /// =============================================================================
  const GetWallPageUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWallPageUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWallPageUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetWallPageUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetWallPageUseCase create(Ref ref) {
    return getWallPageUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetWallPageUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetWallPageUseCase>(value),
    );
  }
}

String _$getWallPageUseCaseHash() =>
    r'2f44d6319e027765b35d88e6929a4c90e37da37d';

@ProviderFor(likeWallItemUseCase)
const likeWallItemUseCaseProvider = LikeWallItemUseCaseProvider._();

final class LikeWallItemUseCaseProvider
    extends
        $FunctionalProvider<
          LikeWallItemUseCase,
          LikeWallItemUseCase,
          LikeWallItemUseCase
        >
    with $Provider<LikeWallItemUseCase> {
  const LikeWallItemUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'likeWallItemUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$likeWallItemUseCaseHash();

  @$internal
  @override
  $ProviderElement<LikeWallItemUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LikeWallItemUseCase create(Ref ref) {
    return likeWallItemUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LikeWallItemUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LikeWallItemUseCase>(value),
    );
  }
}

String _$likeWallItemUseCaseHash() =>
    r'196ad5f31410396a934c1e1bfbd08c840935988a';

@ProviderFor(reportWallItemUseCase)
const reportWallItemUseCaseProvider = ReportWallItemUseCaseProvider._();

final class ReportWallItemUseCaseProvider
    extends
        $FunctionalProvider<
          ReportWallItemUseCase,
          ReportWallItemUseCase,
          ReportWallItemUseCase
        >
    with $Provider<ReportWallItemUseCase> {
  const ReportWallItemUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reportWallItemUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reportWallItemUseCaseHash();

  @$internal
  @override
  $ProviderElement<ReportWallItemUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReportWallItemUseCase create(Ref ref) {
    return reportWallItemUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReportWallItemUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReportWallItemUseCase>(value),
    );
  }
}

String _$reportWallItemUseCaseHash() =>
    r'c675e6de7dd7366606b03cdd6d514f56ea88140c';

@ProviderFor(revokeWallItemUseCase)
const revokeWallItemUseCaseProvider = RevokeWallItemUseCaseProvider._();

final class RevokeWallItemUseCaseProvider
    extends
        $FunctionalProvider<
          RevokeWallItemUseCase,
          RevokeWallItemUseCase,
          RevokeWallItemUseCase
        >
    with $Provider<RevokeWallItemUseCase> {
  const RevokeWallItemUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'revokeWallItemUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$revokeWallItemUseCaseHash();

  @$internal
  @override
  $ProviderElement<RevokeWallItemUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RevokeWallItemUseCase create(Ref ref) {
    return revokeWallItemUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RevokeWallItemUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RevokeWallItemUseCase>(value),
    );
  }
}

String _$revokeWallItemUseCaseHash() =>
    r'25099c0766bf643ad65e62b27e5ac330c40e8464';

@ProviderFor(getWallDetailUseCase)
const getWallDetailUseCaseProvider = GetWallDetailUseCaseProvider._();

final class GetWallDetailUseCaseProvider
    extends
        $FunctionalProvider<
          GetWallDetailUseCase,
          GetWallDetailUseCase,
          GetWallDetailUseCase
        >
    with $Provider<GetWallDetailUseCase> {
  const GetWallDetailUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWallDetailUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWallDetailUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetWallDetailUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetWallDetailUseCase create(Ref ref) {
    return getWallDetailUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetWallDetailUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetWallDetailUseCase>(value),
    );
  }
}

String _$getWallDetailUseCaseHash() =>
    r'3926e99561d573e03748456f78d9cbcd27c752bd';

@ProviderFor(publishPhotoUseCase)
const publishPhotoUseCaseProvider = PublishPhotoUseCaseProvider._();

final class PublishPhotoUseCaseProvider
    extends
        $FunctionalProvider<
          PublishPhotoUseCase,
          PublishPhotoUseCase,
          PublishPhotoUseCase
        >
    with $Provider<PublishPhotoUseCase> {
  const PublishPhotoUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publishPhotoUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publishPhotoUseCaseHash();

  @$internal
  @override
  $ProviderElement<PublishPhotoUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PublishPhotoUseCase create(Ref ref) {
    return publishPhotoUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PublishPhotoUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PublishPhotoUseCase>(value),
    );
  }
}

String _$publishPhotoUseCaseHash() =>
    r'fd900610a30128d441dcb374d405accd34e2c28c';

@ProviderFor(publishMessageUseCase)
const publishMessageUseCaseProvider = PublishMessageUseCaseProvider._();

final class PublishMessageUseCaseProvider
    extends
        $FunctionalProvider<
          PublishMessageUseCase,
          PublishMessageUseCase,
          PublishMessageUseCase
        >
    with $Provider<PublishMessageUseCase> {
  const PublishMessageUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publishMessageUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publishMessageUseCaseHash();

  @$internal
  @override
  $ProviderElement<PublishMessageUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PublishMessageUseCase create(Ref ref) {
    return publishMessageUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PublishMessageUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PublishMessageUseCase>(value),
    );
  }
}

String _$publishMessageUseCaseHash() =>
    r'd42b7665076baa56b2e3a6a3a562ef95e6fcc9b3';

@ProviderFor(editWallItemUseCase)
const editWallItemUseCaseProvider = EditWallItemUseCaseProvider._();

final class EditWallItemUseCaseProvider
    extends
        $FunctionalProvider<
          EditWallItemUseCase,
          EditWallItemUseCase,
          EditWallItemUseCase
        >
    with $Provider<EditWallItemUseCase> {
  const EditWallItemUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editWallItemUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editWallItemUseCaseHash();

  @$internal
  @override
  $ProviderElement<EditWallItemUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EditWallItemUseCase create(Ref ref) {
    return editWallItemUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditWallItemUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditWallItemUseCase>(value),
    );
  }
}

String _$editWallItemUseCaseHash() =>
    r'a7d26e2d77a588ca0a452cddb9a3826b49e5c64e';
