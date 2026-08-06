import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/providers/shared_providers.dart';
import '../../domain/entities/wall_detail_entity.dart';
import '../../domain/usecases/get_wall_detail_usecase.dart';
import 'detail_state.dart';

part 'detail_provider.g.dart';

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
@riverpod
class DetailNotifier extends _$DetailNotifier {
  late GetWallDetailUseCase _getDetail;

  @override
  DetailState build() {
    _getDetail = ref.watch(getWallDetailUseCaseProvider);
    return const DetailState();
  }

  /// 加载详情
  Future<void> load(int id) async {
    state = const DetailState(isLoading: true);
    try {
      final WallDetailEntity detail = await _getDetail(id);
      state = DetailState(detail: detail);
    } on Object catch (e) {
      state = DetailState(errorMessage: e.toString());
    }
  }
}
