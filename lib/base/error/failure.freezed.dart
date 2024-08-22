// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkFailure {
  dynamic get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ApiFailureImplCopyWith(
          _$ApiFailureImpl value, $Res Function(_$ApiFailureImpl) then) =
      __$$ApiFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$ApiFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ApiFailureImpl>
    implements _$$ApiFailureImplCopyWith<$Res> {
  __$$ApiFailureImplCopyWithImpl(
      _$ApiFailureImpl _value, $Res Function(_$ApiFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ApiFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ApiFailureImpl implements _ApiFailure {
  const _$ApiFailureImpl({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'NetworkFailure.api(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      __$$ApiFailureImplCopyWithImpl<_$ApiFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) {
    return api(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) {
    return api?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _ApiFailure implements NetworkFailure {
  const factory _ApiFailure({final dynamic message}) = _$ApiFailureImpl;

  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnAuthorizedFailureImplCopyWith(_$UnAuthorizedFailureImpl value,
          $Res Function(_$UnAuthorizedFailureImpl) then) =
      __$$UnAuthorizedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$UnAuthorizedFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnAuthorizedFailureImpl>
    implements _$$UnAuthorizedFailureImplCopyWith<$Res> {
  __$$UnAuthorizedFailureImplCopyWithImpl(_$UnAuthorizedFailureImpl _value,
      $Res Function(_$UnAuthorizedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnAuthorizedFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnAuthorizedFailureImpl implements _UnAuthorizedFailure {
  const _$UnAuthorizedFailureImpl({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'NetworkFailure.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizedFailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthorizedFailureImplCopyWith<_$UnAuthorizedFailureImpl> get copyWith =>
      __$$UnAuthorizedFailureImplCopyWithImpl<_$UnAuthorizedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorizedFailure implements NetworkFailure {
  const factory _UnAuthorizedFailure({final dynamic message}) =
      _$UnAuthorizedFailureImpl;

  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$UnAuthorizedFailureImplCopyWith<_$UnAuthorizedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$NoInternetFailureImplCopyWith(_$NoInternetFailureImpl value,
          $Res Function(_$NoInternetFailureImpl) then) =
      __$$NoInternetFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$NoInternetFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetFailureImpl>
    implements _$$NoInternetFailureImplCopyWith<$Res> {
  __$$NoInternetFailureImplCopyWithImpl(_$NoInternetFailureImpl _value,
      $Res Function(_$NoInternetFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoInternetFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NoInternetFailureImpl implements _NoInternetFailure {
  const _$NoInternetFailureImpl({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'NetworkFailure.noInternet(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetFailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith =>
      __$$NoInternetFailureImplCopyWithImpl<_$NoInternetFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternetFailure implements NetworkFailure {
  const factory _NoInternetFailure({final dynamic message}) =
      _$NoInternetFailureImpl;

  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements _UnknownFailure {
  const _$UnknownFailureImpl({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'NetworkFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements NetworkFailure {
  const factory _UnknownFailure({final dynamic message}) = _$UnknownFailureImpl;

  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$TimeoutFailureImplCopyWith(_$TimeoutFailureImpl value,
          $Res Function(_$TimeoutFailureImpl) then) =
      __$$TimeoutFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic message});
}

/// @nodoc
class __$$TimeoutFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$TimeoutFailureImpl>
    implements _$$TimeoutFailureImplCopyWith<$Res> {
  __$$TimeoutFailureImplCopyWithImpl(
      _$TimeoutFailureImpl _value, $Res Function(_$TimeoutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TimeoutFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TimeoutFailureImpl implements _TimeoutFailure {
  const _$TimeoutFailureImpl({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'NetworkFailure.timeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutFailureImpl &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      __$$TimeoutFailureImplCopyWithImpl<_$TimeoutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
    required TResult Function(dynamic message) timeout,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic message)? api,
    TResult? Function(dynamic message)? unAuthorized,
    TResult? Function(dynamic message)? noInternet,
    TResult? Function(dynamic message)? unknown,
    TResult? Function(dynamic message)? timeout,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    TResult Function(dynamic message)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
    required TResult Function(_TimeoutFailure value) timeout,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiFailure value)? api,
    TResult? Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult? Function(_NoInternetFailure value)? noInternet,
    TResult? Function(_UnknownFailure value)? unknown,
    TResult? Function(_TimeoutFailure value)? timeout,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    TResult Function(_TimeoutFailure value)? timeout,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _TimeoutFailure implements NetworkFailure {
  const factory _TimeoutFailure({final dynamic message}) = _$TimeoutFailureImpl;

  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
