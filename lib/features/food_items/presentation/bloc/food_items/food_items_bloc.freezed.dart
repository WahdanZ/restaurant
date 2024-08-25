// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchFoodItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchFoodItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchFoodItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchFoodItems value) searchFoodItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchFoodItems value)? searchFoodItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchFoodItems value)? searchFoodItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemsEventCopyWith<$Res> {
  factory $FoodItemsEventCopyWith(
          FoodItemsEvent value, $Res Function(FoodItemsEvent) then) =
      _$FoodItemsEventCopyWithImpl<$Res, FoodItemsEvent>;
}

/// @nodoc
class _$FoodItemsEventCopyWithImpl<$Res, $Val extends FoodItemsEvent>
    implements $FoodItemsEventCopyWith<$Res> {
  _$FoodItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FoodItemsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FoodItemsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchFoodItems,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchFoodItems,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchFoodItems,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchFoodItems value) searchFoodItems,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchFoodItems value)? searchFoodItems,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchFoodItems value)? searchFoodItems,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FoodItemsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchFoodItemsImplCopyWith<$Res> {
  factory _$$SearchFoodItemsImplCopyWith(_$SearchFoodItemsImpl value,
          $Res Function(_$SearchFoodItemsImpl) then) =
      __$$SearchFoodItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchFoodItemsImplCopyWithImpl<$Res>
    extends _$FoodItemsEventCopyWithImpl<$Res, _$SearchFoodItemsImpl>
    implements _$$SearchFoodItemsImplCopyWith<$Res> {
  __$$SearchFoodItemsImplCopyWithImpl(
      _$SearchFoodItemsImpl _value, $Res Function(_$SearchFoodItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchFoodItemsImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFoodItemsImpl implements _SearchFoodItems {
  const _$SearchFoodItemsImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'FoodItemsEvent.searchFoodItems(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFoodItemsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFoodItemsImplCopyWith<_$SearchFoodItemsImpl> get copyWith =>
      __$$SearchFoodItemsImplCopyWithImpl<_$SearchFoodItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchFoodItems,
  }) {
    return searchFoodItems(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchFoodItems,
  }) {
    return searchFoodItems?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchFoodItems,
    required TResult orElse(),
  }) {
    if (searchFoodItems != null) {
      return searchFoodItems(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchFoodItems value) searchFoodItems,
  }) {
    return searchFoodItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchFoodItems value)? searchFoodItems,
  }) {
    return searchFoodItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchFoodItems value)? searchFoodItems,
    required TResult orElse(),
  }) {
    if (searchFoodItems != null) {
      return searchFoodItems(this);
    }
    return orElse();
  }
}

abstract class _SearchFoodItems implements FoodItemsEvent {
  const factory _SearchFoodItems(final String query) = _$SearchFoodItemsImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchFoodItemsImplCopyWith<_$SearchFoodItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItemEntity> foodItems) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItemEntity> foodItems)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItemEntity> foodItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodItemsStateInitial value) initial,
    required TResult Function(FoodItemsStateLoading value) loading,
    required TResult Function(FoodItemsStateLoaded value) loaded,
    required TResult Function(FoodItemsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodItemsStateInitial value)? initial,
    TResult? Function(FoodItemsStateLoading value)? loading,
    TResult? Function(FoodItemsStateLoaded value)? loaded,
    TResult? Function(FoodItemsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodItemsStateInitial value)? initial,
    TResult Function(FoodItemsStateLoading value)? loading,
    TResult Function(FoodItemsStateLoaded value)? loaded,
    TResult Function(FoodItemsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemsStateCopyWith<$Res> {
  factory $FoodItemsStateCopyWith(
          FoodItemsState value, $Res Function(FoodItemsState) then) =
      _$FoodItemsStateCopyWithImpl<$Res, FoodItemsState>;
}

/// @nodoc
class _$FoodItemsStateCopyWithImpl<$Res, $Val extends FoodItemsState>
    implements $FoodItemsStateCopyWith<$Res> {
  _$FoodItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FoodItemsStateInitialImplCopyWith<$Res> {
  factory _$$FoodItemsStateInitialImplCopyWith(
          _$FoodItemsStateInitialImpl value,
          $Res Function(_$FoodItemsStateInitialImpl) then) =
      __$$FoodItemsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodItemsStateInitialImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsStateInitialImpl>
    implements _$$FoodItemsStateInitialImplCopyWith<$Res> {
  __$$FoodItemsStateInitialImplCopyWithImpl(_$FoodItemsStateInitialImpl _value,
      $Res Function(_$FoodItemsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FoodItemsStateInitialImpl implements FoodItemsStateInitial {
  const _$FoodItemsStateInitialImpl();

  @override
  String toString() {
    return 'FoodItemsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItemEntity> foodItems) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItemEntity> foodItems)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItemEntity> foodItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodItemsStateInitial value) initial,
    required TResult Function(FoodItemsStateLoading value) loading,
    required TResult Function(FoodItemsStateLoaded value) loaded,
    required TResult Function(FoodItemsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodItemsStateInitial value)? initial,
    TResult? Function(FoodItemsStateLoading value)? loading,
    TResult? Function(FoodItemsStateLoaded value)? loaded,
    TResult? Function(FoodItemsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodItemsStateInitial value)? initial,
    TResult Function(FoodItemsStateLoading value)? loading,
    TResult Function(FoodItemsStateLoaded value)? loaded,
    TResult Function(FoodItemsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FoodItemsStateInitial implements FoodItemsState {
  const factory FoodItemsStateInitial() = _$FoodItemsStateInitialImpl;
}

/// @nodoc
abstract class _$$FoodItemsStateLoadingImplCopyWith<$Res> {
  factory _$$FoodItemsStateLoadingImplCopyWith(
          _$FoodItemsStateLoadingImpl value,
          $Res Function(_$FoodItemsStateLoadingImpl) then) =
      __$$FoodItemsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodItemsStateLoadingImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsStateLoadingImpl>
    implements _$$FoodItemsStateLoadingImplCopyWith<$Res> {
  __$$FoodItemsStateLoadingImplCopyWithImpl(_$FoodItemsStateLoadingImpl _value,
      $Res Function(_$FoodItemsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FoodItemsStateLoadingImpl implements FoodItemsStateLoading {
  const _$FoodItemsStateLoadingImpl();

  @override
  String toString() {
    return 'FoodItemsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItemEntity> foodItems) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItemEntity> foodItems)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItemEntity> foodItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodItemsStateInitial value) initial,
    required TResult Function(FoodItemsStateLoading value) loading,
    required TResult Function(FoodItemsStateLoaded value) loaded,
    required TResult Function(FoodItemsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodItemsStateInitial value)? initial,
    TResult? Function(FoodItemsStateLoading value)? loading,
    TResult? Function(FoodItemsStateLoaded value)? loaded,
    TResult? Function(FoodItemsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodItemsStateInitial value)? initial,
    TResult Function(FoodItemsStateLoading value)? loading,
    TResult Function(FoodItemsStateLoaded value)? loaded,
    TResult Function(FoodItemsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FoodItemsStateLoading implements FoodItemsState {
  const factory FoodItemsStateLoading() = _$FoodItemsStateLoadingImpl;
}

/// @nodoc
abstract class _$$FoodItemsStateLoadedImplCopyWith<$Res> {
  factory _$$FoodItemsStateLoadedImplCopyWith(_$FoodItemsStateLoadedImpl value,
          $Res Function(_$FoodItemsStateLoadedImpl) then) =
      __$$FoodItemsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItemEntity> foodItems});
}

/// @nodoc
class __$$FoodItemsStateLoadedImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsStateLoadedImpl>
    implements _$$FoodItemsStateLoadedImplCopyWith<$Res> {
  __$$FoodItemsStateLoadedImplCopyWithImpl(_$FoodItemsStateLoadedImpl _value,
      $Res Function(_$FoodItemsStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItems = null,
  }) {
    return _then(_$FoodItemsStateLoadedImpl(
      null == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItemEntity>,
    ));
  }
}

/// @nodoc

class _$FoodItemsStateLoadedImpl implements FoodItemsStateLoaded {
  const _$FoodItemsStateLoadedImpl(final List<FoodItemEntity> foodItems)
      : _foodItems = foodItems;

  final List<FoodItemEntity> _foodItems;
  @override
  List<FoodItemEntity> get foodItems {
    if (_foodItems is EqualUnmodifiableListView) return _foodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodItems);
  }

  @override
  String toString() {
    return 'FoodItemsState.loaded(foodItems: $foodItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foodItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemsStateLoadedImplCopyWith<_$FoodItemsStateLoadedImpl>
      get copyWith =>
          __$$FoodItemsStateLoadedImplCopyWithImpl<_$FoodItemsStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItemEntity> foodItems) loaded,
    required TResult Function() error,
  }) {
    return loaded(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItemEntity> foodItems)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItemEntity> foodItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(foodItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodItemsStateInitial value) initial,
    required TResult Function(FoodItemsStateLoading value) loading,
    required TResult Function(FoodItemsStateLoaded value) loaded,
    required TResult Function(FoodItemsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodItemsStateInitial value)? initial,
    TResult? Function(FoodItemsStateLoading value)? loading,
    TResult? Function(FoodItemsStateLoaded value)? loaded,
    TResult? Function(FoodItemsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodItemsStateInitial value)? initial,
    TResult Function(FoodItemsStateLoading value)? loading,
    TResult Function(FoodItemsStateLoaded value)? loaded,
    TResult Function(FoodItemsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FoodItemsStateLoaded implements FoodItemsState {
  const factory FoodItemsStateLoaded(final List<FoodItemEntity> foodItems) =
      _$FoodItemsStateLoadedImpl;

  List<FoodItemEntity> get foodItems;
  @JsonKey(ignore: true)
  _$$FoodItemsStateLoadedImplCopyWith<_$FoodItemsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoodItemsStateErrorImplCopyWith<$Res> {
  factory _$$FoodItemsStateErrorImplCopyWith(_$FoodItemsStateErrorImpl value,
          $Res Function(_$FoodItemsStateErrorImpl) then) =
      __$$FoodItemsStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodItemsStateErrorImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsStateErrorImpl>
    implements _$$FoodItemsStateErrorImplCopyWith<$Res> {
  __$$FoodItemsStateErrorImplCopyWithImpl(_$FoodItemsStateErrorImpl _value,
      $Res Function(_$FoodItemsStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FoodItemsStateErrorImpl implements FoodItemsStateError {
  const _$FoodItemsStateErrorImpl();

  @override
  String toString() {
    return 'FoodItemsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItemEntity> foodItems) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItemEntity> foodItems)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItemEntity> foodItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodItemsStateInitial value) initial,
    required TResult Function(FoodItemsStateLoading value) loading,
    required TResult Function(FoodItemsStateLoaded value) loaded,
    required TResult Function(FoodItemsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodItemsStateInitial value)? initial,
    TResult? Function(FoodItemsStateLoading value)? loading,
    TResult? Function(FoodItemsStateLoaded value)? loaded,
    TResult? Function(FoodItemsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodItemsStateInitial value)? initial,
    TResult Function(FoodItemsStateLoading value)? loading,
    TResult Function(FoodItemsStateLoaded value)? loaded,
    TResult Function(FoodItemsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FoodItemsStateError implements FoodItemsState {
  const factory FoodItemsStateError() = _$FoodItemsStateErrorImpl;
}
