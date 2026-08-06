// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountModel {

@JsonKey(name: 'count') int get count;
/// Create a copy of CountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountModelCopyWith<CountModel> get copyWith => _$CountModelCopyWithImpl<CountModel>(this as CountModel, _$identity);

  /// Serializes this CountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountModel&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'CountModel(count: $count)';
}


}

/// @nodoc
abstract mixin class $CountModelCopyWith<$Res>  {
  factory $CountModelCopyWith(CountModel value, $Res Function(CountModel) _then) = _$CountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'count') int count
});




}
/// @nodoc
class _$CountModelCopyWithImpl<$Res>
    implements $CountModelCopyWith<$Res> {
  _$CountModelCopyWithImpl(this._self, this._then);

  final CountModel _self;
  final $Res Function(CountModel) _then;

/// Create a copy of CountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CountModel].
extension CountModelPatterns on CountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountModel value)  $default,){
final _that = this;
switch (_that) {
case _CountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'count')  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountModel() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'count')  int count)  $default,) {final _that = this;
switch (_that) {
case _CountModel():
return $default(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'count')  int count)?  $default,) {final _that = this;
switch (_that) {
case _CountModel() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountModel extends CountModel {
  const _CountModel({@JsonKey(name: 'count') this.count = 0}): super._();
  factory _CountModel.fromJson(Map<String, dynamic> json) => _$CountModelFromJson(json);

@override@JsonKey(name: 'count') final  int count;

/// Create a copy of CountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountModelCopyWith<_CountModel> get copyWith => __$CountModelCopyWithImpl<_CountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountModel&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'CountModel(count: $count)';
}


}

/// @nodoc
abstract mixin class _$CountModelCopyWith<$Res> implements $CountModelCopyWith<$Res> {
  factory _$CountModelCopyWith(_CountModel value, $Res Function(_CountModel) _then) = __$CountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'count') int count
});




}
/// @nodoc
class __$CountModelCopyWithImpl<$Res>
    implements _$CountModelCopyWith<$Res> {
  __$CountModelCopyWithImpl(this._self, this._then);

  final _CountModel _self;
  final $Res Function(_CountModel) _then;

/// Create a copy of CountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_CountModel(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
