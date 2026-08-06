// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publish_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublishRequest {

@JsonKey(name: 'type') int get type;@JsonKey(name: 'message') String get message;@JsonKey(name: 'imgUrl') String? get imgUrl;@JsonKey(name: 'label') int get label;@JsonKey(name: 'color') int get color;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'id') int? get id;
/// Create a copy of PublishRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublishRequestCopyWith<PublishRequest> get copyWith => _$PublishRequestCopyWithImpl<PublishRequest>(this as PublishRequest, _$identity);

  /// Serializes this PublishRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublishRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,imgUrl,label,color,userId,id);

@override
String toString() {
  return 'PublishRequest(type: $type, message: $message, imgUrl: $imgUrl, label: $label, color: $color, userId: $userId, id: $id)';
}


}

/// @nodoc
abstract mixin class $PublishRequestCopyWith<$Res>  {
  factory $PublishRequestCopyWith(PublishRequest value, $Res Function(PublishRequest) _then) = _$PublishRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String message,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class _$PublishRequestCopyWithImpl<$Res>
    implements $PublishRequestCopyWith<$Res> {
  _$PublishRequestCopyWithImpl(this._self, this._then);

  final PublishRequest _self;
  final $Res Function(PublishRequest) _then;

/// Create a copy of PublishRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? message = null,Object? imgUrl = freezed,Object? label = null,Object? color = null,Object? userId = null,Object? id = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublishRequest].
extension PublishRequestPatterns on PublishRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublishRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublishRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublishRequest value)  $default,){
final _that = this;
switch (_that) {
case _PublishRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublishRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PublishRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String message, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'id')  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublishRequest() when $default != null:
return $default(_that.type,_that.message,_that.imgUrl,_that.label,_that.color,_that.userId,_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String message, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'id')  int? id)  $default,) {final _that = this;
switch (_that) {
case _PublishRequest():
return $default(_that.type,_that.message,_that.imgUrl,_that.label,_that.color,_that.userId,_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String message, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'id')  int? id)?  $default,) {final _that = this;
switch (_that) {
case _PublishRequest() when $default != null:
return $default(_that.type,_that.message,_that.imgUrl,_that.label,_that.color,_that.userId,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublishRequest extends PublishRequest {
  const _PublishRequest({@JsonKey(name: 'type') required this.type, @JsonKey(name: 'message') required this.message, @JsonKey(name: 'imgUrl') this.imgUrl, @JsonKey(name: 'label') this.label = 5, @JsonKey(name: 'color') this.color = 1, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'id') this.id}): super._();
  factory _PublishRequest.fromJson(Map<String, dynamic> json) => _$PublishRequestFromJson(json);

@override@JsonKey(name: 'type') final  int type;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'imgUrl') final  String? imgUrl;
@override@JsonKey(name: 'label') final  int label;
@override@JsonKey(name: 'color') final  int color;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'id') final  int? id;

/// Create a copy of PublishRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublishRequestCopyWith<_PublishRequest> get copyWith => __$PublishRequestCopyWithImpl<_PublishRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublishRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublishRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message,imgUrl,label,color,userId,id);

@override
String toString() {
  return 'PublishRequest(type: $type, message: $message, imgUrl: $imgUrl, label: $label, color: $color, userId: $userId, id: $id)';
}


}

/// @nodoc
abstract mixin class _$PublishRequestCopyWith<$Res> implements $PublishRequestCopyWith<$Res> {
  factory _$PublishRequestCopyWith(_PublishRequest value, $Res Function(_PublishRequest) _then) = __$PublishRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String message,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'id') int? id
});




}
/// @nodoc
class __$PublishRequestCopyWithImpl<$Res>
    implements _$PublishRequestCopyWith<$Res> {
  __$PublishRequestCopyWithImpl(this._self, this._then);

  final _PublishRequest _self;
  final $Res Function(_PublishRequest) _then;

/// Create a copy of PublishRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? message = null,Object? imgUrl = freezed,Object? label = null,Object? color = null,Object? userId = null,Object? id = freezed,}) {
  return _then(_PublishRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
