// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get chairs => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get reservationBy => throw _privateConstructorUsedError;
  String? get reservationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableEntityCopyWith<TableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEntityCopyWith<$Res> {
  factory $TableEntityCopyWith(
          TableEntity value, $Res Function(TableEntity) then) =
      _$TableEntityCopyWithImpl<$Res, TableEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      int chairs,
      String status,
      String? reservationBy,
      String? reservationId});
}

/// @nodoc
class _$TableEntityCopyWithImpl<$Res, $Val extends TableEntity>
    implements $TableEntityCopyWith<$Res> {
  _$TableEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? chairs = null,
    Object? status = null,
    Object? reservationBy = freezed,
    Object? reservationId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chairs: null == chairs
          ? _value.chairs
          : chairs // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reservationBy: freezed == reservationBy
          ? _value.reservationBy
          : reservationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationId: freezed == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableEntityImplCopyWith<$Res>
    implements $TableEntityCopyWith<$Res> {
  factory _$$TableEntityImplCopyWith(
          _$TableEntityImpl value, $Res Function(_$TableEntityImpl) then) =
      __$$TableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int chairs,
      String status,
      String? reservationBy,
      String? reservationId});
}

/// @nodoc
class __$$TableEntityImplCopyWithImpl<$Res>
    extends _$TableEntityCopyWithImpl<$Res, _$TableEntityImpl>
    implements _$$TableEntityImplCopyWith<$Res> {
  __$$TableEntityImplCopyWithImpl(
      _$TableEntityImpl _value, $Res Function(_$TableEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? chairs = null,
    Object? status = null,
    Object? reservationBy = freezed,
    Object? reservationId = freezed,
  }) {
    return _then(_$TableEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chairs: null == chairs
          ? _value.chairs
          : chairs // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      reservationBy: freezed == reservationBy
          ? _value.reservationBy
          : reservationBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationId: freezed == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TableEntityImpl implements _TableEntity {
  const _$TableEntityImpl(
      {required this.id,
      required this.name,
      required this.chairs,
      required this.status,
      this.reservationBy,
      this.reservationId});

  @override
  final String id;
  @override
  final String name;
  @override
  final int chairs;
  @override
  final String status;
  @override
  final String? reservationBy;
  @override
  final String? reservationId;

  @override
  String toString() {
    return 'TableEntity(id: $id, name: $name, chairs: $chairs, status: $status, reservationBy: $reservationBy, reservationId: $reservationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.chairs, chairs) || other.chairs == chairs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reservationBy, reservationBy) ||
                other.reservationBy == reservationBy) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, chairs, status, reservationBy, reservationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableEntityImplCopyWith<_$TableEntityImpl> get copyWith =>
      __$$TableEntityImplCopyWithImpl<_$TableEntityImpl>(this, _$identity);
}

abstract class _TableEntity implements TableEntity {
  const factory _TableEntity(
      {required final String id,
      required final String name,
      required final int chairs,
      required final String status,
      final String? reservationBy,
      final String? reservationId}) = _$TableEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int get chairs;
  @override
  String get status;
  @override
  String? get reservationBy;
  @override
  String? get reservationId;
  @override
  @JsonKey(ignore: true)
  _$$TableEntityImplCopyWith<_$TableEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
