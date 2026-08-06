// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailResponse _$DetailResponseFromJson(Map<String, dynamic> json) =>
    _DetailResponse(
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
      comcount:
          (json['comcount'] as List<dynamic>?)
              ?.map((e) => CountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CountModel>[],
    );

Map<String, dynamic> _$DetailResponseToJson(_DetailResponse instance) =>
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
      'comcount': instance.comcount,
    };
