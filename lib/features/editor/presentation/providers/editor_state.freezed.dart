// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditorState {

/// 当前编辑内容
 PublishEntity? get entity;/// 是否正在提交
 bool get isSubmitting;/// 是否提交成功
 bool get isSuccess;/// 错误信息
 String? get errorMessage;
/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditorStateCopyWith<EditorState> get copyWith => _$EditorStateCopyWithImpl<EditorState>(this as EditorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditorState&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,entity,isSubmitting,isSuccess,errorMessage);

@override
String toString() {
  return 'EditorState(entity: $entity, isSubmitting: $isSubmitting, isSuccess: $isSuccess, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EditorStateCopyWith<$Res>  {
  factory $EditorStateCopyWith(EditorState value, $Res Function(EditorState) _then) = _$EditorStateCopyWithImpl;
@useResult
$Res call({
 PublishEntity? entity, bool isSubmitting, bool isSuccess, String? errorMessage
});




}
/// @nodoc
class _$EditorStateCopyWithImpl<$Res>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._self, this._then);

  final EditorState _self;
  final $Res Function(EditorState) _then;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entity = freezed,Object? isSubmitting = null,Object? isSuccess = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as PublishEntity?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditorState].
extension EditorStatePatterns on EditorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditorState value)  $default,){
final _that = this;
switch (_that) {
case _EditorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditorState value)?  $default,){
final _that = this;
switch (_that) {
case _EditorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PublishEntity? entity,  bool isSubmitting,  bool isSuccess,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditorState() when $default != null:
return $default(_that.entity,_that.isSubmitting,_that.isSuccess,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PublishEntity? entity,  bool isSubmitting,  bool isSuccess,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _EditorState():
return $default(_that.entity,_that.isSubmitting,_that.isSuccess,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PublishEntity? entity,  bool isSubmitting,  bool isSuccess,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _EditorState() when $default != null:
return $default(_that.entity,_that.isSubmitting,_that.isSuccess,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EditorState extends EditorState {
  const _EditorState({this.entity, this.isSubmitting = false, this.isSuccess = false, this.errorMessage}): super._();
  

/// 当前编辑内容
@override final  PublishEntity? entity;
/// 是否正在提交
@override@JsonKey() final  bool isSubmitting;
/// 是否提交成功
@override@JsonKey() final  bool isSuccess;
/// 错误信息
@override final  String? errorMessage;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditorStateCopyWith<_EditorState> get copyWith => __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditorState&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,entity,isSubmitting,isSuccess,errorMessage);

@override
String toString() {
  return 'EditorState(entity: $entity, isSubmitting: $isSubmitting, isSuccess: $isSuccess, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$EditorStateCopyWith<$Res> implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(_EditorState value, $Res Function(_EditorState) _then) = __$EditorStateCopyWithImpl;
@override @useResult
$Res call({
 PublishEntity? entity, bool isSubmitting, bool isSuccess, String? errorMessage
});




}
/// @nodoc
class __$EditorStateCopyWithImpl<$Res>
    implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(this._self, this._then);

  final _EditorState _self;
  final $Res Function(_EditorState) _then;

/// Create a copy of EditorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entity = freezed,Object? isSubmitting = null,Object? isSuccess = null,Object? errorMessage = freezed,}) {
  return _then(_EditorState(
entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as PublishEntity?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
