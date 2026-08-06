// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 编辑页 Notifier
///
/// 职责说明：
/// - 管理编辑/发布流程：表单输入、提交、错误处理
/// - 调用各 UseCase 完成业务
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

@ProviderFor(EditorNotifier)
const editorProvider = EditorNotifierProvider._();

/// 编辑页 Notifier
///
/// 职责说明：
/// - 管理编辑/发布流程：表单输入、提交、错误处理
/// - 调用各 UseCase 完成业务
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
final class EditorNotifierProvider
    extends $NotifierProvider<EditorNotifier, EditorState> {
  /// 编辑页 Notifier
  ///
  /// 职责说明：
  /// - 管理编辑/发布流程：表单输入、提交、错误处理
  /// - 调用各 UseCase 完成业务
  ///
  /// 设计模式：ViewModel（Riverpod Notifier）
  ///
  /// 作者：photo_wall_flutter team
  /// 日期：2026-08-05
  const EditorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editorNotifierHash();

  @$internal
  @override
  EditorNotifier create() => EditorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditorState>(value),
    );
  }
}

String _$editorNotifierHash() => r'd0936fb68a2577b89f73ef9ca4c7b8d96171ae66';

/// 编辑页 Notifier
///
/// 职责说明：
/// - 管理编辑/发布流程：表单输入、提交、错误处理
/// - 调用各 UseCase 完成业务
///
/// 设计模式：ViewModel（Riverpod Notifier）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05

abstract class _$EditorNotifier extends $Notifier<EditorState> {
  EditorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EditorState, EditorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditorState, EditorState>,
              EditorState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
