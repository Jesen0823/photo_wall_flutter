import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/wall_detail_entity.dart';

part 'detail_state.freezed.dart';

/// 详情页状态
///
/// 职责说明：
/// - 描述详情页 UI 状态（加载中 / 数据 / 错误）
/// - 由 [DetailNotifier] 管理
///
/// 设计模式：状态对象（State）+ 联合类型
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class DetailState with _$DetailState {
  const DetailState._();
  const factory DetailState({
    @Default(false) bool isLoading,
    WallDetailEntity? detail,
    String? errorMessage,
  }) = _DetailState;
}
