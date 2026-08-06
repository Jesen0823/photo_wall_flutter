// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WallPageState {

/// 内容类型（留言 / 照片）
 WallType get type;/// 当前页码
 int get page;/// 每页条数
 int get pageSize;/// 是否还有更多
 bool get hasMore;/// 是否正在刷新
 bool get isRefreshing;/// 是否正在加载更多
 bool get isLoadingMore;/// 当前数据
 List<WallItemEntity> get items;/// 错误信息（非 null 表示出错）
 String? get errorMessage;
/// Create a copy of WallPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WallPageStateCopyWith<WallPageState> get copyWith => _$WallPageStateCopyWithImpl<WallPageState>(this as WallPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WallPageState&&(identical(other.type, type) || other.type == type)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,type,page,pageSize,hasMore,isRefreshing,isLoadingMore,const DeepCollectionEquality().hash(items),errorMessage);

@override
String toString() {
  return 'WallPageState(type: $type, page: $page, pageSize: $pageSize, hasMore: $hasMore, isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $WallPageStateCopyWith<$Res>  {
  factory $WallPageStateCopyWith(WallPageState value, $Res Function(WallPageState) _then) = _$WallPageStateCopyWithImpl;
@useResult
$Res call({
 WallType type, int page, int pageSize, bool hasMore, bool isRefreshing, bool isLoadingMore, List<WallItemEntity> items, String? errorMessage
});




}
/// @nodoc
class _$WallPageStateCopyWithImpl<$Res>
    implements $WallPageStateCopyWith<$Res> {
  _$WallPageStateCopyWithImpl(this._self, this._then);

  final WallPageState _self;
  final $Res Function(WallPageState) _then;

/// Create a copy of WallPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? page = null,Object? pageSize = null,Object? hasMore = null,Object? isRefreshing = null,Object? isLoadingMore = null,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WallType,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WallItemEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WallPageState].
extension WallPageStatePatterns on WallPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WallPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WallPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WallPageState value)  $default,){
final _that = this;
switch (_that) {
case _WallPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WallPageState value)?  $default,){
final _that = this;
switch (_that) {
case _WallPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WallType type,  int page,  int pageSize,  bool hasMore,  bool isRefreshing,  bool isLoadingMore,  List<WallItemEntity> items,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WallPageState() when $default != null:
return $default(_that.type,_that.page,_that.pageSize,_that.hasMore,_that.isRefreshing,_that.isLoadingMore,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WallType type,  int page,  int pageSize,  bool hasMore,  bool isRefreshing,  bool isLoadingMore,  List<WallItemEntity> items,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _WallPageState():
return $default(_that.type,_that.page,_that.pageSize,_that.hasMore,_that.isRefreshing,_that.isLoadingMore,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WallType type,  int page,  int pageSize,  bool hasMore,  bool isRefreshing,  bool isLoadingMore,  List<WallItemEntity> items,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _WallPageState() when $default != null:
return $default(_that.type,_that.page,_that.pageSize,_that.hasMore,_that.isRefreshing,_that.isLoadingMore,_that.items,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _WallPageState extends WallPageState {
  const _WallPageState({this.type = WallType.message, this.page = 1, this.pageSize = 8, this.hasMore = true, this.isRefreshing = false, this.isLoadingMore = false, final  List<WallItemEntity> items = const <WallItemEntity>[], this.errorMessage}): _items = items,super._();
  

/// 内容类型（留言 / 照片）
@override@JsonKey() final  WallType type;
/// 当前页码
@override@JsonKey() final  int page;
/// 每页条数
@override@JsonKey() final  int pageSize;
/// 是否还有更多
@override@JsonKey() final  bool hasMore;
/// 是否正在刷新
@override@JsonKey() final  bool isRefreshing;
/// 是否正在加载更多
@override@JsonKey() final  bool isLoadingMore;
/// 当前数据
 final  List<WallItemEntity> _items;
/// 当前数据
@override@JsonKey() List<WallItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// 错误信息（非 null 表示出错）
@override final  String? errorMessage;

/// Create a copy of WallPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WallPageStateCopyWith<_WallPageState> get copyWith => __$WallPageStateCopyWithImpl<_WallPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WallPageState&&(identical(other.type, type) || other.type == type)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,type,page,pageSize,hasMore,isRefreshing,isLoadingMore,const DeepCollectionEquality().hash(_items),errorMessage);

@override
String toString() {
  return 'WallPageState(type: $type, page: $page, pageSize: $pageSize, hasMore: $hasMore, isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$WallPageStateCopyWith<$Res> implements $WallPageStateCopyWith<$Res> {
  factory _$WallPageStateCopyWith(_WallPageState value, $Res Function(_WallPageState) _then) = __$WallPageStateCopyWithImpl;
@override @useResult
$Res call({
 WallType type, int page, int pageSize, bool hasMore, bool isRefreshing, bool isLoadingMore, List<WallItemEntity> items, String? errorMessage
});




}
/// @nodoc
class __$WallPageStateCopyWithImpl<$Res>
    implements _$WallPageStateCopyWith<$Res> {
  __$WallPageStateCopyWithImpl(this._self, this._then);

  final _WallPageState _self;
  final $Res Function(_WallPageState) _then;

/// Create a copy of WallPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? page = null,Object? pageSize = null,Object? hasMore = null,Object? isRefreshing = null,Object? isLoadingMore = null,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_WallPageState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WallType,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WallItemEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
