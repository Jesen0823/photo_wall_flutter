// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublishRequest _$PublishRequestFromJson(Map<String, dynamic> json) =>
    _PublishRequest(
      type: (json['type'] as num).toInt(),
      message: json['message'] as String,
      imgUrl: json['imgUrl'] as String?,
      label: (json['label'] as num?)?.toInt() ?? 5,
      color: (json['color'] as num?)?.toInt() ?? 1,
      userId: json['userId'] as String,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PublishRequestToJson(_PublishRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'imgUrl': instance.imgUrl,
      'label': instance.label,
      'color': instance.color,
      'userId': instance.userId,
      'id': instance.id,
    };
