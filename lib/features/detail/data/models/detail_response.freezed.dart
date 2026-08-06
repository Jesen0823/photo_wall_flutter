// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailResponse {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'type') int get type;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'name') String get name;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'moment') String get moment;@JsonKey(name: 'label') int get label;@JsonKey(name: 'color') int get color;@JsonKey(name: 'imgUrl') String? get imgUrl;@JsonKey(name: 'like') List<CountModel> get like;@JsonKey(name: 'comcount') List<CountModel> get comcount;
/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailResponseCopyWith<DetailResponse> get copyWith => _$DetailResponseCopyWithImpl<DetailResponse>(this as DetailResponse, _$identity);

  /// Serializes this DetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.moment, moment) || other.moment == moment)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&const DeepCollectionEquality().equals(other.like, like)&&const DeepCollectionEquality().equals(other.comcount, comcount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,message,name,userId,moment,label,color,imgUrl,const DeepCollectionEquality().hash(like),const DeepCollectionEquality().hash(comcount));

@override
String toString() {
  return 'DetailResponse(id: $id, type: $type, message: $message, name: $name, userId: $userId, moment: $moment, label: $label, color: $color, imgUrl: $imgUrl, like: $like, comcount: $comcount)';
}


}

/// @nodoc
abstract mixin class $DetailResponseCopyWith<$Res>  {
  factory $DetailResponseCopyWith(DetailResponse value, $Res Function(DetailResponse) _then) = _$DetailResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String? message,@JsonKey(name: 'name') String name,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'moment') String moment,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'like') List<CountModel> like,@JsonKey(name: 'comcount') List<CountModel> comcount
});




}
/// @nodoc
class _$DetailResponseCopyWithImpl<$Res>
    implements $DetailResponseCopyWith<$Res> {
  _$DetailResponseCopyWithImpl(this._self, this._then);

  final DetailResponse _self;
  final $Res Function(DetailResponse) _then;

/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? message = freezed,Object? name = null,Object? userId = null,Object? moment = null,Object? label = null,Object? color = null,Object? imgUrl = freezed,Object? like = null,Object? comcount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,moment: null == moment ? _self.moment : moment // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,like: null == like ? _self.like : like // ignore: cast_nullable_to_non_nullable
as List<CountModel>,comcount: null == comcount ? _self.comcount : comcount // ignore: cast_nullable_to_non_nullable
as List<CountModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailResponse].
extension DetailResponsePatterns on DetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _DetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'comcount')  List<CountModel> comcount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.comcount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'comcount')  List<CountModel> comcount)  $default,) {final _that = this;
switch (_that) {
case _DetailResponse():
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.comcount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'comcount')  List<CountModel> comcount)?  $default,) {final _that = this;
switch (_that) {
case _DetailResponse() when $default != null:
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.comcount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailResponse extends DetailResponse {
  const _DetailResponse({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'type') this.type = 0, @JsonKey(name: 'message') this.message, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'userId') this.userId = '0', @JsonKey(name: 'moment') required this.moment, @JsonKey(name: 'label') this.label = 0, @JsonKey(name: 'color') this.color = 1, @JsonKey(name: 'imgUrl') this.imgUrl, @JsonKey(name: 'like') final  List<CountModel> like = const <CountModel>[], @JsonKey(name: 'comcount') final  List<CountModel> comcount = const <CountModel>[]}): _like = like,_comcount = comcount,super._();
  factory _DetailResponse.fromJson(Map<String, dynamic> json) => _$DetailResponseFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'type') final  int type;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'userId') final  String userId;
@override@JsonKey(name: 'moment') final  String moment;
@override@JsonKey(name: 'label') final  int label;
@override@JsonKey(name: 'color') final  int color;
@override@JsonKey(name: 'imgUrl') final  String? imgUrl;
 final  List<CountModel> _like;
@override@JsonKey(name: 'like') List<CountModel> get like {
  if (_like is EqualUnmodifiableListView) return _like;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_like);
}

 final  List<CountModel> _comcount;
@override@JsonKey(name: 'comcount') List<CountModel> get comcount {
  if (_comcount is EqualUnmodifiableListView) return _comcount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comcount);
}


/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailResponseCopyWith<_DetailResponse> get copyWith => __$DetailResponseCopyWithImpl<_DetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.moment, moment) || other.moment == moment)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&const DeepCollectionEquality().equals(other._like, _like)&&const DeepCollectionEquality().equals(other._comcount, _comcount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,message,name,userId,moment,label,color,imgUrl,const DeepCollectionEquality().hash(_like),const DeepCollectionEquality().hash(_comcount));

@override
String toString() {
  return 'DetailResponse(id: $id, type: $type, message: $message, name: $name, userId: $userId, moment: $moment, label: $label, color: $color, imgUrl: $imgUrl, like: $like, comcount: $comcount)';
}


}

/// @nodoc
abstract mixin class _$DetailResponseCopyWith<$Res> implements $DetailResponseCopyWith<$Res> {
  factory _$DetailResponseCopyWith(_DetailResponse value, $Res Function(_DetailResponse) _then) = __$DetailResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String? message,@JsonKey(name: 'name') String name,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'moment') String moment,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'like') List<CountModel> like,@JsonKey(name: 'comcount') List<CountModel> comcount
});




}
/// @nodoc
class __$DetailResponseCopyWithImpl<$Res>
    implements _$DetailResponseCopyWith<$Res> {
  __$DetailResponseCopyWithImpl(this._self, this._then);

  final _DetailResponse _self;
  final $Res Function(_DetailResponse) _then;

/// Create a copy of DetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? message = freezed,Object? name = null,Object? userId = null,Object? moment = null,Object? label = null,Object? color = null,Object? imgUrl = freezed,Object? like = null,Object? comcount = null,}) {
  return _then(_DetailResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,moment: null == moment ? _self.moment : moment // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,imgUrl: freezed == imgUrl ? _self.imgUrl : imgUrl // ignore: cast_nullable_to_non_nullable
as String?,like: null == like ? _self._like : like // ignore: cast_nullable_to_non_nullable
as List<CountModel>,comcount: null == comcount ? _self._comcount : comcount // ignore: cast_nullable_to_non_nullable
as List<CountModel>,
  ));
}


}

// dart format on
