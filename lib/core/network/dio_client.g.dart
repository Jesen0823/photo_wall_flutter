// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Dio Provider
///
/// 全局单例，注入 [EnvConfig] 决定 baseUrl 与日志开关。

@ProviderFor(dioClient)
const dioClientProvider = DioClientProvider._();

/// Dio Provider
///
/// 全局单例，注入 [EnvConfig] 决定 baseUrl 与日志开关。

final class DioClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  /// Dio Provider
  ///
  /// 全局单例，注入 [EnvConfig] 决定 baseUrl 与日志开关。
  const DioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return dioClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$dioClientHash() => r'22d77b199b2f73921ca05b320428a3a435a39670';

/// EnvConfig Provider（默认 dev 环境）

@ProviderFor(envConfig)
const envConfigProvider = EnvConfigProvider._();

/// EnvConfig Provider（默认 dev 环境）

final class EnvConfigProvider
    extends $FunctionalProvider<EnvConfig, EnvConfig, EnvConfig>
    with $Provider<EnvConfig> {
  /// EnvConfig Provider（默认 dev 环境）
  const EnvConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'envConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$envConfigHash();

  @$internal
  @override
  $ProviderElement<EnvConfig> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EnvConfig create(Ref ref) {
    return envConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EnvConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EnvConfig>(value),
    );
  }
}

String _$envConfigHash() => r'e91430336629f20b0da19dcbcd658248a5698ef1';
