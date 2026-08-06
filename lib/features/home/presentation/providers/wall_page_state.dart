import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/wall_item_entity.dart';
import '../../domain/entities/wall_type.dart';

part 'wall_page_state.freezed.dart';

/// 留言/照片墙列表状态
///
/// 职责说明：
/// - 描述首页列表 UI 的状态：内容类型、分页信息、数据、刷新/加载更多状态
/// - freezed 自动生成 copyWith 与联合类型
/// - 由 [WallPageNotifier] 管理
///
/// 设计模式：状态对象（State）+ 代数数据类型
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class WallPageState with _$WallPageState {
  const WallPageState._();
  const factory WallPageState({
    /// 内容类型（留言 / 照片）
    @Default(WallType.message) WallType type,

    /// 当前页码
    @Default(1) int page,

    /// 每页条数
    @Default(8) int pageSize,

    /// 是否还有更多
    @Default(true) bool hasMore,

    /// 是否正在刷新
    @Default(false) bool isRefreshing,

    /// 是否正在加载更多
    @Default(false) bool isLoadingMore,

    /// 当前数据
    @Default(<WallItemEntity>[]) List<WallItemEntity> items,

    /// 错误信息（非 null 表示出错）
    String? errorMessage,
  }) = _WallPageState;
}
