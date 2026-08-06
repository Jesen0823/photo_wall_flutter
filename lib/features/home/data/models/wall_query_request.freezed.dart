// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_query_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WallQueryRequest {

@JsonKey(name: 'type') int get type;@JsonKey(name: 'page') int get page;@JsonKey(name: 'pageSize') int get pageSize;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'label') int get label;
/// Create a copy of WallQueryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WallQueryRequestCopyWith<WallQueryRequest> get copyWith => _$WallQueryRequestCopyWithImpl<WallQueryRequest>(this as WallQueryRequest, _$identity);

  /// Serializes this WallQueryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WallQueryRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,page,pageSize,userId,label);

@override
String toString() {
  return 'WallQueryRequest(type: $type, page: $page, pageSize: $pageSize, userId: $userId, label: $label)';
}


}

/// @nodoc
abstract mixin class $WallQueryRequestCopyWith<$Res>  {
  factory $WallQueryRequestCopyWith(WallQueryRequest value, $Res Function(WallQueryRequest) _then) = _$WallQueryRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type') int type,@JsonKey(name: 'page') int page,@JsonKey(name: 'pageSize') int pageSize,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'label') int label
});




}
/// @nodoc
class _$WallQueryRequestCopyWithImpl<$Res>
    implements $WallQueryRequestCopyWith<$Res> {
  _$WallQueryRequestCopyWithImpl(this._self, this._then);

  final WallQueryRequest _self;
  final $Res Function(WallQueryRequest) _then;

/// Create a copy of WallQueryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? page = null,Object? pageSize = null,Object? userId = null,Object? label = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WallQueryRequest].
extension WallQueryRequestPatterns on WallQueryRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WallQueryRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WallQueryRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WallQueryRequest value)  $default,){
final _that = this;
switch (_that) {
case _WallQueryRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WallQueryRequest value)?  $default,){
final _that = this;
switch (_that) {
case _WallQueryRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'page')  int page, @JsonKey(name: 'pageSize')  int pageSize, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'label')  int label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WallQueryRequest() when $default != null:
return $default(_that.type,_that.page,_that.pageSize,_that.userId,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'page')  int page, @JsonKey(name: 'pageSize')  int pageSize, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'label')  int label)  $default,) {final _that = this;
switch (_that) {
case _WallQueryRequest():
return $default(_that.type,_that.page,_that.pageSize,_that.userId,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'type')  int type, @JsonKey(name: 'page')  int page, @JsonKey(name: 'pageSize')  int pageSize, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'label')  int label)?  $default,) {final _that = this;
switch (_that) {
case _WallQueryRequest() when $default != null:
return $default(_that.type,_that.page,_that.pageSize,_that.userId,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WallQueryRequest extends WallQueryRequest {
  const _WallQueryRequest({@JsonKey(name: 'type') required this.type, @JsonKey(name: 'page') this.page = 1, @JsonKey(name: 'pageSize') this.pageSize = 8, @JsonKey(name: 'userId') this.userId = '0', @JsonKey(name: 'label') this.label = 5}): super._();
  factory _WallQueryRequest.fromJson(Map<String, dynamic> json) => _$WallQueryRequestFromJson(json);

@override@JsonKey(name: 'type') final  int type;
@override@JsonKey(name: 'page') final  int page;
@override@JsonKey(name: 'pageSize') final  int pageSize;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'label') final  int label;

/// Create a copy of WallQueryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WallQueryRequestCopyWith<_WallQueryRequest> get copyWith => __$WallQueryRequestCopyWithImpl<_WallQueryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WallQueryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WallQueryRequest&&(identical(other.type, type) || other.type == type)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,page,pageSize,userId,label);

@override
String toString() {
  return 'WallQueryRequest(type: $type, page: $page, pageSize: $pageSize, userId: $userId, label: $label)';
}


}

/// @nodoc
abstract mixin class _$WallQueryRequestCopyWith<$Res> implements $WallQueryRequestCopyWith<$Res> {
  factory _$WallQueryRequestCopyWith(_WallQueryRequest value, $Res Function(_WallQueryRequest) _then) = __$WallQueryRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type') int type,@JsonKey(name: 'page') int page,@JsonKey(name: 'pageSize') int pageSize,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'label') int label
});




}
/// @nodoc
class __$WallQueryRequestCopyWithImpl<$Res>
    implements _$WallQueryRequestCopyWith<$Res> {
  __$WallQueryRequestCopyWithImpl(this._self, this._then);

  final _WallQueryRequest _self;
  final $Res Function(_WallQueryRequest) _then;

/// Create a copy of WallQueryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? page = null,Object? pageSize = null,Object? userId = null,Object? label = null,}) {
  return _then(_WallQueryRequest(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
