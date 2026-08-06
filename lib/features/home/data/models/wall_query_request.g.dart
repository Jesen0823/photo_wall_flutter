// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_query_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WallQueryRequest _$WallQueryRequestFromJson(Map<String, dynamic> json) =>
    _WallQueryRequest(
      type: (json['type'] as num).toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 8,
      userId: json['userId'] as String? ?? '0',
      label: (json['label'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$WallQueryRequestToJson(_WallQueryRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'userId': instance.userId,
      'label': instance.label,
    };
