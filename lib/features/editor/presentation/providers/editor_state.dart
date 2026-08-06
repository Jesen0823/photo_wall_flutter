import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/publish_entity.dart';

part 'editor_state.freezed.dart';

/// 编辑页状态
///
/// 职责说明：
/// - 描述编辑页 UI 状态（内容、提交中、错误）
/// - 由 [EditorNotifier] 管理
///
/// 设计模式：状态对象（State）
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class EditorState with _$EditorState {
  const EditorState._();
  const factory EditorState({
    /// 当前编辑内容
    PublishEntity? entity,

    /// 是否正在提交
    @Default(false) bool isSubmitting,

    /// 是否提交成功
    @Default(false) bool isSuccess,

    /// 错误信息
    String? errorMessage,
  }) = _EditorState;
}
