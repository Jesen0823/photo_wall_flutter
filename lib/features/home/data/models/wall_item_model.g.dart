// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WallItemModel _$WallItemModelFromJson(Map<String, dynamic> json) =>
    _WallItemModel(
      id: (json['id'] as num).toInt(),
      type: (json['type'] as num?)?.toInt() ?? 0,
      message: json['message'] as String?,
      name: json['name'] as String? ?? '',
      userId: json['userId'] as String? ?? '0',
      moment: json['moment'] as String,
      label: (json['label'] as num?)?.toInt() ?? 0,
      color: (json['color'] as num?)?.toInt() ?? 1,
      imgUrl: json['imgUrl'] as String?,
      like:
          (json['like'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
      report:
          (json['report'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
      revoke:
          (json['revoke'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
      islike:
          (json['islike'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
      comcount:
          (json['comcount'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
    );

Map<String, dynamic> _$WallItemModelToJson(_WallItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'message': instance.message,
      'name': instance.name,
      'userId': instance.userId,
      'moment': instance.moment,
      'label': instance.label,
      'color': instance.color,
      'imgUrl': instance.imgUrl,
      'like': instance.like,
      'report': instance.report,
      'revoke': instance.revoke,
      'islike': instance.islike,
      'comcount': instance.comcount,
    };
