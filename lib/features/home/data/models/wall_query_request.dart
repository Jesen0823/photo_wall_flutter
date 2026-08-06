// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wall_query_request.freezed.dart';
part 'wall_query_request.g.dart';

/// 留言/照片墙分页查询请求体
///
/// 职责说明：
/// - 与后端 `/findWallPage` 接口的请求 body 一一对应
/// - 示例：{"type":0,"page":1,"pageSize":8,"userId":"0","label":5}
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class WallQueryRequest with _$WallQueryRequest {
  const WallQueryRequest._();
  const factory WallQueryRequest({
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'page') @Default(1) int page,
    @JsonKey(name: 'pageSize') @Default(8) int pageSize,
    @JsonKey(name: 'userId') @Default('0') String userId,
    @JsonKey(name: 'label') @Default(5) int label,
  }) = _WallQueryRequest;

  factory WallQueryRequest.fromJson(Map<String, dynamic> json) =>
      _$WallQueryRequestFromJson(json);
}
