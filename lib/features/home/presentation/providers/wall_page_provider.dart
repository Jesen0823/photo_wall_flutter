import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../shared/providers/shared_providers.dart';
import '../../domain/entities/wall_item_entity.dart';
import '../../domain/entities/wall_type.dart';
import '../../domain/usecases/get_wall_page_usecase.dart';
import '../../domain/usecases/like_wall_item_usecase.dart';
import '../../domain/usecases/report_wall_item_usecase.dart';
import '../../domain/usecases/revoke_wall_item_usecase.dart';
import 'wall_page_state.dart';

part 'wall_page_provider.g.dart';

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
@riverpod
class WallPageNotifier extends _$WallPageNotifier {
  bool _mounted = true;
  bool _isOperationInProgress = false;

  @override
  WallPageState build() {
    final GetWallPageUseCase getPage = ref.watch(getWallPageUseCaseProvider);
    final LikeWallItemUseCase like = ref.watch(likeWallItemUseCaseProvider);
    final ReportWallItemUseCase report = ref.watch(reportWallItemUseCaseProvider);
    final RevokeWallItemUseCase revoke = ref.watch(revokeWallItemUseCaseProvider);

    ref.onDispose(() {
      _mounted = false;
    });

    // 初始化依赖注入
    _dependencies = _Dependencies(getPage, like, report, revoke);

    return const WallPageState();
  }

  late final _Dependencies _dependencies;

  /// 切换内容类型
  Future<void> switchType(WallType type) async {
    if (!_mounted) return;
    if (state.type == type) return;
    if (_isOperationInProgress) {
      // 排队等待：标记类型，等当前操作完成后再切换
      _pendingType = type;
      return;
    }

    _isOperationInProgress = true;
    state = state.copyWith(
      type: type,
      page: 1,
      items: <WallItemEntity>[],
      hasMore: true,
    );
    await _loadPage(type, page: 1);
    _isOperationInProgress = false;

    // 如果有排队的类型切换
    if (_pendingType != null && _mounted) {
      final WallType pending = _pendingType!;
      _pendingType = null;
      await switchType(pending);
    }
  }

  WallType? _pendingType;

  /// 刷新（重置到第 1 页）
  Future<void> refresh() async {
    if (!_mounted || _isOperationInProgress) return;
    _isOperationInProgress = true;
    await _loadPage(state.type, page: 1);
    _isOperationInProgress = false;

    if (_pendingType != null && _mounted) {
      final WallType pending = _pendingType!;
      _pendingType = null;
      await switchType(pending);
    }
  }

  /// 加载更多
  Future<void> loadMore() async {
    if (!_mounted) return;
    if (!state.hasMore || state.isLoadingMore || _isOperationInProgress) return;
    state = state.copyWith(isLoadingMore: true);
    await _loadPage(state.type, page: state.page + 1, append: true);
  }

  /// 点赞
  Future<void> like(int id) async {
    if (!_mounted) return;
    try {
      await _dependencies.like(id);
      // TODO: 乐观更新本地 state
    } on Object catch (_) {
      // 静默失败
    }
  }

  /// 举报
  Future<void> report(int id) async {
    if (!_mounted) return;
    try {
      await _dependencies.report(id);
    } on Object catch (_) {
      // 静默失败
    }
  }

  /// 撤回
  Future<void> revoke(int id) async {
    if (!_mounted) return;
    try {
      await _dependencies.revoke(id);
    } on Object catch (_) {
      // 静默失败
    }
  }

  /// 核心加载逻辑
  Future<void> _loadPage(
    WallType type, {
    required int page,
    bool append = false,
  }) async {
    if (!_mounted) return;
    if (!append) {
      state = state.copyWith(isRefreshing: true, errorMessage: null);
    }
    try {
      final List<WallItemEntity> items = await _dependencies.getPage(
        type: type,
        page: page,
        pageSize: state.pageSize,
        userId: AppConstants.defaultUserId,
      );
      if (!_mounted) return;
      if (append) {
        state = state.copyWith(
          items: <WallItemEntity>[...state.items, ...items],
          page: page,
          hasMore: items.length >= state.pageSize,
          isLoadingMore: false,
        );
      } else {
        state = state.copyWith(
          items: items,
          page: page,
          hasMore: items.length >= state.pageSize,
          isRefreshing: false,
        );
      }
    } on Object catch (e) {
      if (!_mounted) return;
      if (append) {
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: e.toString(),
        );
      } else {
        state = state.copyWith(
          isRefreshing: false,
          errorMessage: e.toString(),
        );
      }
    }
  }
}

class _Dependencies {
  _Dependencies(this.getPage, this.like, this.report, this.revoke);
  final GetWallPageUseCase getPage;
  final LikeWallItemUseCase like;
  final ReportWallItemUseCase report;
  final RevokeWallItemUseCase revoke;
}
