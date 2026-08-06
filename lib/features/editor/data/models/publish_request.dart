// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'publish_request.freezed.dart';
part 'publish_request.g.dart';

/// 发布/编辑请求体
///
/// 职责说明：
/// - 与后端发布接口请求 body 一一对应
/// - 待后端接口确认后调整字段
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class PublishRequest with _$PublishRequest {
  const PublishRequest._();
  const factory PublishRequest({
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'imgUrl') String? imgUrl,
    @JsonKey(name: 'label') @Default(5) int label,
    @JsonKey(name: 'color') @Default(1) int color,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'id') int? id,
  }) = _PublishRequest;

  factory PublishRequest.fromJson(Map<String, dynamic> json) =>
      _$PublishRequestFromJson(json);
}
