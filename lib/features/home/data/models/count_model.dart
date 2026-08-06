// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_model.freezed.dart';
part 'count_model.g.dart';

/// 计数子模型
///
/// 职责说明：
/// - 对应后端 like / report / revoke / islike / comcount 数组结构
/// - 后端返回形如 `[{"count": 0}]`，本模型描述单个元素
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
@freezed
abstract class CountModel with _$CountModel {
  const CountModel._();
  const factory CountModel({
    @JsonKey(name: 'count') @Default(0) int count,
  }) = _CountModel;

  factory CountModel.fromJson(Map<String, dynamic> json) =>
      _$CountModelFromJson(json);
}
