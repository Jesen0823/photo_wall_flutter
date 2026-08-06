// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WallItemModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'type') int get type;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'name') String get name;@JsonKey(name: 'userId') String get userId;@JsonKey(name: 'moment') String get moment;@JsonKey(name: 'label') int get label;@JsonKey(name: 'color') int get color;@JsonKey(name: 'imgUrl') String? get imgUrl;@JsonKey(name: 'like') List<CountModel> get like;@JsonKey(name: 'report') List<CountModel> get report;@JsonKey(name: 'revoke') List<CountModel> get revoke;@JsonKey(name: 'islike') List<CountModel> get islike;@JsonKey(name: 'comcount') List<CountModel> get comcount;
/// Create a copy of WallItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WallItemModelCopyWith<WallItemModel> get copyWith => _$WallItemModelCopyWithImpl<WallItemModel>(this as WallItemModel, _$identity);

  /// Serializes this WallItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WallItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.moment, moment) || other.moment == moment)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&const DeepCollectionEquality().equals(other.like, like)&&const DeepCollectionEquality().equals(other.report, report)&&const DeepCollectionEquality().equals(other.revoke, revoke)&&const DeepCollectionEquality().equals(other.islike, islike)&&const DeepCollectionEquality().equals(other.comcount, comcount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,message,name,userId,moment,label,color,imgUrl,const DeepCollectionEquality().hash(like),const DeepCollectionEquality().hash(report),const DeepCollectionEquality().hash(revoke),const DeepCollectionEquality().hash(islike),const DeepCollectionEquality().hash(comcount));

@override
String toString() {
  return 'WallItemModel(id: $id, type: $type, message: $message, name: $name, userId: $userId, moment: $moment, label: $label, color: $color, imgUrl: $imgUrl, like: $like, report: $report, revoke: $revoke, islike: $islike, comcount: $comcount)';
}


}

/// @nodoc
abstract mixin class $WallItemModelCopyWith<$Res>  {
  factory $WallItemModelCopyWith(WallItemModel value, $Res Function(WallItemModel) _then) = _$WallItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String? message,@JsonKey(name: 'name') String name,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'moment') String moment,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'like') List<CountModel> like,@JsonKey(name: 'report') List<CountModel> report,@JsonKey(name: 'revoke') List<CountModel> revoke,@JsonKey(name: 'islike') List<CountModel> islike,@JsonKey(name: 'comcount') List<CountModel> comcount
});




}
/// @nodoc
class _$WallItemModelCopyWithImpl<$Res>
    implements $WallItemModelCopyWith<$Res> {
  _$WallItemModelCopyWithImpl(this._self, this._then);

  final WallItemModel _self;
  final $Res Function(WallItemModel) _then;

/// Create a copy of WallItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? message = freezed,Object? name = null,Object? userId = null,Object? moment = null,Object? label = null,Object? color = null,Object? imgUrl = freezed,Object? like = null,Object? report = null,Object? revoke = null,Object? islike = null,Object? comcount = null,}) {
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
as List<CountModel>,report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as List<CountModel>,revoke: null == revoke ? _self.revoke : revoke // ignore: cast_nullable_to_non_nullable
as List<CountModel>,islike: null == islike ? _self.islike : islike // ignore: cast_nullable_to_non_nullable
as List<CountModel>,comcount: null == comcount ? _self.comcount : comcount // ignore: cast_nullable_to_non_nullable
as List<CountModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [WallItemModel].
extension WallItemModelPatterns on WallItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WallItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WallItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WallItemModel value)  $default,){
final _that = this;
switch (_that) {
case _WallItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WallItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _WallItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'report')  List<CountModel> report, @JsonKey(name: 'revoke')  List<CountModel> revoke, @JsonKey(name: 'islike')  List<CountModel> islike, @JsonKey(name: 'comcount')  List<CountModel> comcount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WallItemModel() when $default != null:
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.report,_that.revoke,_that.islike,_that.comcount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'report')  List<CountModel> report, @JsonKey(name: 'revoke')  List<CountModel> revoke, @JsonKey(name: 'islike')  List<CountModel> islike, @JsonKey(name: 'comcount')  List<CountModel> comcount)  $default,) {final _that = this;
switch (_that) {
case _WallItemModel():
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.report,_that.revoke,_that.islike,_that.comcount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'type')  int type, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'name')  String name, @JsonKey(name: 'userId')  String userId, @JsonKey(name: 'moment')  String moment, @JsonKey(name: 'label')  int label, @JsonKey(name: 'color')  int color, @JsonKey(name: 'imgUrl')  String? imgUrl, @JsonKey(name: 'like')  List<CountModel> like, @JsonKey(name: 'report')  List<CountModel> report, @JsonKey(name: 'revoke')  List<CountModel> revoke, @JsonKey(name: 'islike')  List<CountModel> islike, @JsonKey(name: 'comcount')  List<CountModel> comcount)?  $default,) {final _that = this;
switch (_that) {
case _WallItemModel() when $default != null:
return $default(_that.id,_that.type,_that.message,_that.name,_that.userId,_that.moment,_that.label,_that.color,_that.imgUrl,_that.like,_that.report,_that.revoke,_that.islike,_that.comcount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WallItemModel extends WallItemModel {
  const _WallItemModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'type') this.type = 0, @JsonKey(name: 'message') this.message, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'userId') this.userId = '0', @JsonKey(name: 'moment') required this.moment, @JsonKey(name: 'label') this.label = 0, @JsonKey(name: 'color') this.color = 1, @JsonKey(name: 'imgUrl') this.imgUrl, @JsonKey(name: 'like') final  List<CountModel> like = const <CountModel>[], @JsonKey(name: 'report') final  List<CountModel> report = const <CountModel>[], @JsonKey(name: 'revoke') final  List<CountModel> revoke = const <CountModel>[], @JsonKey(name: 'islike') final  List<CountModel> islike = const <CountModel>[], @JsonKey(name: 'comcount') final  List<CountModel> comcount = const <CountModel>[]}): _like = like,_report = report,_revoke = revoke,_islike = islike,_comcount = comcount,super._();
  factory _WallItemModel.fromJson(Map<String, dynamic> json) => _$WallItemModelFromJson(json);

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

 final  List<CountModel> _report;
@override@JsonKey(name: 'report') List<CountModel> get report {
  if (_report is EqualUnmodifiableListView) return _report;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_report);
}

 final  List<CountModel> _revoke;
@override@JsonKey(name: 'revoke') List<CountModel> get revoke {
  if (_revoke is EqualUnmodifiableListView) return _revoke;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revoke);
}

 final  List<CountModel> _islike;
@override@JsonKey(name: 'islike') List<CountModel> get islike {
  if (_islike is EqualUnmodifiableListView) return _islike;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_islike);
}

 final  List<CountModel> _comcount;
@override@JsonKey(name: 'comcount') List<CountModel> get comcount {
  if (_comcount is EqualUnmodifiableListView) return _comcount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comcount);
}


/// Create a copy of WallItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WallItemModelCopyWith<_WallItemModel> get copyWith => __$WallItemModelCopyWithImpl<_WallItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WallItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WallItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.moment, moment) || other.moment == moment)&&(identical(other.label, label) || other.label == label)&&(identical(other.color, color) || other.color == color)&&(identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl)&&const DeepCollectionEquality().equals(other._like, _like)&&const DeepCollectionEquality().equals(other._report, _report)&&const DeepCollectionEquality().equals(other._revoke, _revoke)&&const DeepCollectionEquality().equals(other._islike, _islike)&&const DeepCollectionEquality().equals(other._comcount, _comcount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,message,name,userId,moment,label,color,imgUrl,const DeepCollectionEquality().hash(_like),const DeepCollectionEquality().hash(_report),const DeepCollectionEquality().hash(_revoke),const DeepCollectionEquality().hash(_islike),const DeepCollectionEquality().hash(_comcount));

@override
String toString() {
  return 'WallItemModel(id: $id, type: $type, message: $message, name: $name, userId: $userId, moment: $moment, label: $label, color: $color, imgUrl: $imgUrl, like: $like, report: $report, revoke: $revoke, islike: $islike, comcount: $comcount)';
}


}

/// @nodoc
abstract mixin class _$WallItemModelCopyWith<$Res> implements $WallItemModelCopyWith<$Res> {
  factory _$WallItemModelCopyWith(_WallItemModel value, $Res Function(_WallItemModel) _then) = __$WallItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'type') int type,@JsonKey(name: 'message') String? message,@JsonKey(name: 'name') String name,@JsonKey(name: 'userId') String userId,@JsonKey(name: 'moment') String moment,@JsonKey(name: 'label') int label,@JsonKey(name: 'color') int color,@JsonKey(name: 'imgUrl') String? imgUrl,@JsonKey(name: 'like') List<CountModel> like,@JsonKey(name: 'report') List<CountModel> report,@JsonKey(name: 'revoke') List<CountModel> revoke,@JsonKey(name: 'islike') List<CountModel> islike,@JsonKey(name: 'comcount') List<CountModel> comcount
});




}
/// @nodoc
class __$WallItemModelCopyWithImpl<$Res>
    implements _$WallItemModelCopyWith<$Res> {
  __$WallItemModelCopyWithImpl(this._self, this._then);

  final _WallItemModel _self;
  final $Res Function(_WallItemModel) _then;

/// Create a copy of WallItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? message = freezed,Object? name = null,Object? userId = null,Object? moment = null,Object? label = null,Object? color = null,Object? imgUrl = freezed,Object? like = null,Object? report = null,Object? revoke = null,Object? islike = null,Object? comcount = null,}) {
  return _then(_WallItemModel(
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
as List<CountModel>,report: null == report ? _self._report : report // ignore: cast_nullable_to_non_nullable
as List<CountModel>,revoke: null == revoke ? _self._revoke : revoke // ignore: cast_nullable_to_non_nullable
as List<CountModel>,islike: null == islike ? _self._islike : islike // ignore: cast_nullable_to_non_nullable
as List<CountModel>,comcount: null == comcount ? _self._comcount : comcount // ignore: cast_nullable_to_non_nullable
as List<CountModel>,
  ));
}


}

// dart format on
