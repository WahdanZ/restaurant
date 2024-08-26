// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fetchTables,
    required TResult Function(TableEntity table, String username, DateTime date)
        reserveTable,
    required TResult Function(String reservationId) cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fetchTables,
    TResult? Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult? Function(String reservationId)? cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fetchTables,
    TResult Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult Function(String reservationId)? cancelReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTables value) fetchTables,
    required TResult Function(ReserveTable value) reserveTable,
    required TResult Function(CancelReservation value) cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTables value)? fetchTables,
    TResult? Function(ReserveTable value)? reserveTable,
    TResult? Function(CancelReservation value)? cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTables value)? fetchTables,
    TResult Function(ReserveTable value)? reserveTable,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEventCopyWith<$Res> {
  factory $TableEventCopyWith(
          TableEvent value, $Res Function(TableEvent) then) =
      _$TableEventCopyWithImpl<$Res, TableEvent>;
}

/// @nodoc
class _$TableEventCopyWithImpl<$Res, $Val extends TableEvent>
    implements $TableEventCopyWith<$Res> {
  _$TableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTablesImplCopyWith<$Res> {
  factory _$$FetchTablesImplCopyWith(
          _$FetchTablesImpl value, $Res Function(_$FetchTablesImpl) then) =
      __$$FetchTablesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$FetchTablesImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$FetchTablesImpl>
    implements _$$FetchTablesImplCopyWith<$Res> {
  __$$FetchTablesImplCopyWithImpl(
      _$FetchTablesImpl _value, $Res Function(_$FetchTablesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FetchTablesImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchTablesImpl implements FetchTables {
  const _$FetchTablesImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TableEvent.fetchTables(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTablesImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTablesImplCopyWith<_$FetchTablesImpl> get copyWith =>
      __$$FetchTablesImplCopyWithImpl<_$FetchTablesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fetchTables,
    required TResult Function(TableEntity table, String username, DateTime date)
        reserveTable,
    required TResult Function(String reservationId) cancelReservation,
  }) {
    return fetchTables(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fetchTables,
    TResult? Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult? Function(String reservationId)? cancelReservation,
  }) {
    return fetchTables?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fetchTables,
    TResult Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult Function(String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (fetchTables != null) {
      return fetchTables(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTables value) fetchTables,
    required TResult Function(ReserveTable value) reserveTable,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return fetchTables(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTables value)? fetchTables,
    TResult? Function(ReserveTable value)? reserveTable,
    TResult? Function(CancelReservation value)? cancelReservation,
  }) {
    return fetchTables?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTables value)? fetchTables,
    TResult Function(ReserveTable value)? reserveTable,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (fetchTables != null) {
      return fetchTables(this);
    }
    return orElse();
  }
}

abstract class FetchTables implements TableEvent {
  const factory FetchTables(final DateTime date) = _$FetchTablesImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$FetchTablesImplCopyWith<_$FetchTablesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReserveTableImplCopyWith<$Res> {
  factory _$$ReserveTableImplCopyWith(
          _$ReserveTableImpl value, $Res Function(_$ReserveTableImpl) then) =
      __$$ReserveTableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TableEntity table, String username, DateTime date});

  $TableEntityCopyWith<$Res> get table;
}

/// @nodoc
class __$$ReserveTableImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$ReserveTableImpl>
    implements _$$ReserveTableImplCopyWith<$Res> {
  __$$ReserveTableImplCopyWithImpl(
      _$ReserveTableImpl _value, $Res Function(_$ReserveTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
    Object? username = null,
    Object? date = null,
  }) {
    return _then(_$ReserveTableImpl(
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableEntity,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TableEntityCopyWith<$Res> get table {
    return $TableEntityCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }
}

/// @nodoc

class _$ReserveTableImpl implements ReserveTable {
  const _$ReserveTableImpl(
      {required this.table, required this.username, required this.date});

  @override
  final TableEntity table;
  @override
  final String username;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'TableEvent.reserveTable(table: $table, username: $username, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReserveTableImpl &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, table, username, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReserveTableImplCopyWith<_$ReserveTableImpl> get copyWith =>
      __$$ReserveTableImplCopyWithImpl<_$ReserveTableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fetchTables,
    required TResult Function(TableEntity table, String username, DateTime date)
        reserveTable,
    required TResult Function(String reservationId) cancelReservation,
  }) {
    return reserveTable(table, username, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fetchTables,
    TResult? Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult? Function(String reservationId)? cancelReservation,
  }) {
    return reserveTable?.call(table, username, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fetchTables,
    TResult Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult Function(String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (reserveTable != null) {
      return reserveTable(table, username, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTables value) fetchTables,
    required TResult Function(ReserveTable value) reserveTable,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return reserveTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTables value)? fetchTables,
    TResult? Function(ReserveTable value)? reserveTable,
    TResult? Function(CancelReservation value)? cancelReservation,
  }) {
    return reserveTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTables value)? fetchTables,
    TResult Function(ReserveTable value)? reserveTable,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (reserveTable != null) {
      return reserveTable(this);
    }
    return orElse();
  }
}

abstract class ReserveTable implements TableEvent {
  const factory ReserveTable(
      {required final TableEntity table,
      required final String username,
      required final DateTime date}) = _$ReserveTableImpl;

  TableEntity get table;
  String get username;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$ReserveTableImplCopyWith<_$ReserveTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelReservationImplCopyWith<$Res> {
  factory _$$CancelReservationImplCopyWith(_$CancelReservationImpl value,
          $Res Function(_$CancelReservationImpl) then) =
      __$$CancelReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reservationId});
}

/// @nodoc
class __$$CancelReservationImplCopyWithImpl<$Res>
    extends _$TableEventCopyWithImpl<$Res, _$CancelReservationImpl>
    implements _$$CancelReservationImplCopyWith<$Res> {
  __$$CancelReservationImplCopyWithImpl(_$CancelReservationImpl _value,
      $Res Function(_$CancelReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationId = null,
  }) {
    return _then(_$CancelReservationImpl(
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelReservationImpl implements CancelReservation {
  const _$CancelReservationImpl(this.reservationId);

  @override
  final String reservationId;

  @override
  String toString() {
    return 'TableEvent.cancelReservation(reservationId: $reservationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelReservationImpl &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelReservationImplCopyWith<_$CancelReservationImpl> get copyWith =>
      __$$CancelReservationImplCopyWithImpl<_$CancelReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fetchTables,
    required TResult Function(TableEntity table, String username, DateTime date)
        reserveTable,
    required TResult Function(String reservationId) cancelReservation,
  }) {
    return cancelReservation(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fetchTables,
    TResult? Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult? Function(String reservationId)? cancelReservation,
  }) {
    return cancelReservation?.call(reservationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fetchTables,
    TResult Function(TableEntity table, String username, DateTime date)?
        reserveTable,
    TResult Function(String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation(reservationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTables value) fetchTables,
    required TResult Function(ReserveTable value) reserveTable,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return cancelReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTables value)? fetchTables,
    TResult? Function(ReserveTable value)? reserveTable,
    TResult? Function(CancelReservation value)? cancelReservation,
  }) {
    return cancelReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTables value)? fetchTables,
    TResult Function(ReserveTable value)? reserveTable,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation(this);
    }
    return orElse();
  }
}

abstract class CancelReservation implements TableEvent {
  const factory CancelReservation(final String reservationId) =
      _$CancelReservationImpl;

  String get reservationId;
  @JsonKey(ignore: true)
  _$$CancelReservationImplCopyWith<_$CancelReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<$Res> {
  factory $TableStateCopyWith(
          TableState value, $Res Function(TableState) then) =
      _$TableStateCopyWithImpl<$Res, TableState>;
}

/// @nodoc
class _$TableStateCopyWithImpl<$Res, $Val extends TableState>
    implements $TableStateCopyWith<$Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TableState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TableState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TableState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TableState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TableEntity> tables});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = null,
  }) {
    return _then(_$LoadedImpl(
      null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<TableEntity> tables) : _tables = tables;

  final List<TableEntity> _tables;
  @override
  List<TableEntity> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'TableState.loaded(tables: $tables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return loaded(tables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return loaded?.call(tables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TableState {
  const factory Loaded(final List<TableEntity> tables) = _$LoadedImpl;

  List<TableEntity> get tables;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TableState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TableState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservedImplCopyWith<$Res> {
  factory _$$ReservedImplCopyWith(
          _$ReservedImpl value, $Res Function(_$ReservedImpl) then) =
      __$$ReservedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tableId});
}

/// @nodoc
class __$$ReservedImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$ReservedImpl>
    implements _$$ReservedImplCopyWith<$Res> {
  __$$ReservedImplCopyWithImpl(
      _$ReservedImpl _value, $Res Function(_$ReservedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
  }) {
    return _then(_$ReservedImpl(
      null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReservedImpl implements Reserved {
  const _$ReservedImpl(this.tableId);

  @override
  final String tableId;

  @override
  String toString() {
    return 'TableState.reserved(tableId: $tableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservedImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservedImplCopyWith<_$ReservedImpl> get copyWith =>
      __$$ReservedImplCopyWithImpl<_$ReservedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return reserved(tableId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return reserved?.call(tableId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
    required TResult orElse(),
  }) {
    if (reserved != null) {
      return reserved(tableId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return reserved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return reserved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (reserved != null) {
      return reserved(this);
    }
    return orElse();
  }
}

abstract class Reserved implements TableState {
  const factory Reserved(final String tableId) = _$ReservedImpl;

  String get tableId;
  @JsonKey(ignore: true)
  _$$ReservedImplCopyWith<_$ReservedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tableId});
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
  }) {
    return _then(_$CancelledImpl(
      null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelledImpl implements Cancelled {
  const _$CancelledImpl(this.tableId);

  @override
  final String tableId;

  @override
  String toString() {
    return 'TableState.cancelled(tableId: $tableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelledImplCopyWith<_$CancelledImpl> get copyWith =>
      __$$CancelledImplCopyWithImpl<_$CancelledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TableEntity> tables) loaded,
    required TResult Function(String message) error,
    required TResult Function(String tableId) reserved,
    required TResult Function(String tableId) cancelled,
  }) {
    return cancelled(tableId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TableEntity> tables)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(String tableId)? reserved,
    TResult? Function(String tableId)? cancelled,
  }) {
    return cancelled?.call(tableId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TableEntity> tables)? loaded,
    TResult Function(String message)? error,
    TResult Function(String tableId)? reserved,
    TResult Function(String tableId)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(tableId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Reserved value) reserved,
    required TResult Function(Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Reserved value)? reserved,
    TResult? Function(Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Reserved value)? reserved,
    TResult Function(Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements TableState {
  const factory Cancelled(final String tableId) = _$CancelledImpl;

  String get tableId;
  @JsonKey(ignore: true)
  _$$CancelledImplCopyWith<_$CancelledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
