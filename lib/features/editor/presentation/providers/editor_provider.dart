import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/providers/shared_providers.dart';
import '../../../home/domain/entities/wall_type.dart';
import '../../domain/entities/publish_entity.dart';
import '../../domain/usecases/edit_wall_item_usecase.dart';
import '../../domain/usecases/publish_message_usecase.dart';
import '../../domain/usecases/publish_photo_usecase.dart';
import 'editor_state.dart';

part 'editor_provider.g.dart';

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
@riverpod
class EditorNotifier extends _$EditorNotifier {
  late PublishPhotoUseCase _publishPhoto;
  late PublishMessageUseCase _publishMessage;
  late EditWallItemUseCase _edit;

  @override
  EditorState build() {
    _publishPhoto = ref.watch(publishPhotoUseCaseProvider);
    _publishMessage = ref.watch(publishMessageUseCaseProvider);
    _edit = ref.watch(editWallItemUseCaseProvider);
    return const EditorState();
  }

  /// 初始化（编辑模式下加载已有内容）
  void init(PublishEntity? entity) {
    state = EditorState(entity: entity);
  }

  /// 提交
  Future<void> submit() async {
    final PublishEntity? entity = state.entity;
    if (entity == null) return;

    state = state.copyWith(isSubmitting: true, errorMessage: null);
    try {
      if (entity.isEditing) {
        await _edit(entity);
      } else if (entity.type == WallType.photo) {
        await _publishPhoto(entity);
      } else {
        await _publishMessage(entity);
      }
      state = state.copyWith(isSubmitting: false, isSuccess: true);
    } on Object catch (e) {
      state = state.copyWith(isSubmitting: false, errorMessage: e.toString());
    }
  }
}
