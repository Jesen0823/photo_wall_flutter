// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// LocalStorage Provider
///
/// 初始化时需先调用 SharedPreferences.getInstance()。

@ProviderFor(localStorage)
const localStorageProvider = LocalStorageProvider._();

/// LocalStorage Provider
///
/// 初始化时需先调用 SharedPreferences.getInstance()。

final class LocalStorageProvider
    extends
        $FunctionalProvider<
          AsyncValue<LocalStorage>,
          LocalStorage,
          FutureOr<LocalStorage>
        >
    with $FutureModifier<LocalStorage>, $FutureProvider<LocalStorage> {
  /// LocalStorage Provider
  ///
  /// 初始化时需先调用 SharedPreferences.getInstance()。
  const LocalStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localStorageHash();

  @$internal
  @override
  $FutureProviderElement<LocalStorage> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LocalStorage> create(Ref ref) {
    return localStorage(ref);
  }
}

String _$localStorageHash() => r'64a56112df239f4f89d867bdee1641b3aaed492f';
