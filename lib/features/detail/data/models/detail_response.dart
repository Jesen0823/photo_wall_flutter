// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/count_model.dart';

part 'detail_response.freezed.dart';
part 'detail_response.g.dart';

/// 详情响应模型
///
/// 职责说明：
/// - 与后端详情接口响应一一对应（结构暂复用列表项 + 评论扩展）
/// - 待后端接口确认后调整字段
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class DetailResponse with _$DetailResponse {
  const DetailResponse._();
  const factory DetailResponse({
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
    @JsonKey(name: 'comcount') @Default(<CountModel>[]) List<CountModel> comcount,
  }) = _DetailResponse;

  factory DetailResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailResponseFromJson(json);
}
