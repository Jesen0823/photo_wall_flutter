// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'count_model.dart';

part 'wall_item_model.freezed.dart';
part 'wall_item_model.g.dart';

/// 留言/照片墙 API 模型
///
/// 职责说明：
/// - 与后端 `/findWallPage` 响应中的单个元素一一对应
/// - 由 [WallMapper] 转换为领域 [WallItemEntity]
/// - freezed 自动生成不可变类 + copyWith + fromJson/toJson
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class WallItemModel with _$WallItemModel {
  const WallItemModel._();
  const factory WallItemModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'type') @Default(0) int type,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'userId') @Default('0') String userId,
    @JsonKey(name: 'moment') required String moment,
    @JsonKey(name: 'label') @Default(0) int label,
    @JsonKey(name: 'color') @Default(1) int color,
    @JsonKey(name: 'imgUrl') String? imgUrl,
    @JsonKey(name: 'like') @Default(<CountModel>[]) List<CountModel> like,
    @JsonKey(name: 'report') @Default(<CountModel>[]) List<CountModel> report,
    @JsonKey(name: 'revoke') @Default(<CountModel>[]) List<CountModel> revoke,
    @JsonKey(name: 'islike') @Default(<CountModel>[]) List<CountModel> islike,
    @JsonKey(name: 'comcount') @Default(<CountModel>[]) List<CountModel> comcount,
  }) = _WallItemModel;

  factory WallItemModel.fromJson(Map<String, dynamic> json) =>
      _$WallItemModelFromJson(json);
}
