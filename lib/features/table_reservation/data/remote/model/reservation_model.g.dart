// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ReservationModelCollectionReference
    implements
        ReservationModelQuery,
        FirestoreCollectionReference<ReservationModel,
            ReservationModelQuerySnapshot> {
  factory ReservationModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ReservationModelCollectionReference;

  static ReservationModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ReservationModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ReservationModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<ReservationModel> get reference;

  @override
  ReservationModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ReservationModelDocumentReference> add(ReservationModel value);
}

class _$ReservationModelCollectionReference extends _$ReservationModelQuery
    implements ReservationModelCollectionReference {
  factory _$ReservationModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ReservationModelCollectionReference._(
      firestore.collection('reservations').withConverter(
            fromFirestore: ReservationModelCollectionReference.fromFirestore,
            toFirestore: ReservationModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ReservationModelCollectionReference._(
    CollectionReference<ReservationModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ReservationModel> get reference =>
      super.reference as CollectionReference<ReservationModel>;

  @override
  ReservationModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ReservationModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ReservationModelDocumentReference> add(ReservationModel value) {
    return reference
        .add(value)
        .then((ref) => ReservationModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ReservationModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ReservationModelDocumentReference
    extends FirestoreDocumentReference<ReservationModel,
        ReservationModelDocumentSnapshot> {
  factory ReservationModelDocumentReference(
          DocumentReference<ReservationModel> reference) =
      _$ReservationModelDocumentReference;

  DocumentReference<ReservationModel> get reference;

  /// A reference to the [ReservationModelCollectionReference] containing this document.
  ReservationModelCollectionReference get parent {
    return _$ReservationModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ReservationModelDocumentSnapshot> snapshots();

  @override
  Future<ReservationModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String tableId,
    FieldValue tableIdFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    DateTime startTime,
    FieldValue startTimeFieldValue,
    DateTime endTime,
    FieldValue endTimeFieldValue,
    String username,
    FieldValue usernameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String tableId,
    FieldValue tableIdFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    DateTime startTime,
    FieldValue startTimeFieldValue,
    DateTime endTime,
    FieldValue endTimeFieldValue,
    String username,
    FieldValue usernameFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String tableId,
    FieldValue tableIdFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    DateTime startTime,
    FieldValue startTimeFieldValue,
    DateTime endTime,
    FieldValue endTimeFieldValue,
    String username,
    FieldValue usernameFieldValue,
  });
}

class _$ReservationModelDocumentReference extends FirestoreDocumentReference<
        ReservationModel, ReservationModelDocumentSnapshot>
    implements ReservationModelDocumentReference {
  _$ReservationModelDocumentReference(this.reference);

  @override
  final DocumentReference<ReservationModel> reference;

  /// A reference to the [ReservationModelCollectionReference] containing this document.
  ReservationModelCollectionReference get parent {
    return _$ReservationModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ReservationModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ReservationModelDocumentSnapshot._);
  }

  @override
  Future<ReservationModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ReservationModelDocumentSnapshot._);
  }

  @override
  Future<ReservationModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ReservationModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? tableId = _sentinel,
    FieldValue? tableIdFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
    Object? username = _sentinel,
    FieldValue? usernameFieldValue,
  }) async {
    assert(
      tableId == _sentinel || tableIdFieldValue == null,
      "Cannot specify both tableId and tableIdFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    assert(
      username == _sentinel || usernameFieldValue == null,
      "Cannot specify both username and usernameFieldValue",
    );
    final json = {
      if (tableId != _sentinel)
        _$ReservationModelFieldMap['tableId']!:
            _$ReservationModelPerFieldToJson.tableId(tableId as String),
      if (tableIdFieldValue != null)
        _$ReservationModelFieldMap['tableId']!: tableIdFieldValue,
      if (userId != _sentinel)
        _$ReservationModelFieldMap['userId']!:
            _$ReservationModelPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$ReservationModelFieldMap['userId']!: userIdFieldValue,
      if (startTime != _sentinel)
        _$ReservationModelFieldMap['startTime']!:
            _$ReservationModelPerFieldToJson.startTime(startTime as DateTime),
      if (startTimeFieldValue != null)
        _$ReservationModelFieldMap['startTime']!: startTimeFieldValue,
      if (endTime != _sentinel)
        _$ReservationModelFieldMap['endTime']!:
            _$ReservationModelPerFieldToJson.endTime(endTime as DateTime),
      if (endTimeFieldValue != null)
        _$ReservationModelFieldMap['endTime']!: endTimeFieldValue,
      if (username != _sentinel)
        _$ReservationModelFieldMap['username']!:
            _$ReservationModelPerFieldToJson.username(username as String),
      if (usernameFieldValue != null)
        _$ReservationModelFieldMap['username']!: usernameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? tableId = _sentinel,
    FieldValue? tableIdFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
    Object? username = _sentinel,
    FieldValue? usernameFieldValue,
  }) {
    assert(
      tableId == _sentinel || tableIdFieldValue == null,
      "Cannot specify both tableId and tableIdFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    assert(
      username == _sentinel || usernameFieldValue == null,
      "Cannot specify both username and usernameFieldValue",
    );
    final json = {
      if (tableId != _sentinel)
        _$ReservationModelFieldMap['tableId']!:
            _$ReservationModelPerFieldToJson.tableId(tableId as String),
      if (tableIdFieldValue != null)
        _$ReservationModelFieldMap['tableId']!: tableIdFieldValue,
      if (userId != _sentinel)
        _$ReservationModelFieldMap['userId']!:
            _$ReservationModelPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$ReservationModelFieldMap['userId']!: userIdFieldValue,
      if (startTime != _sentinel)
        _$ReservationModelFieldMap['startTime']!:
            _$ReservationModelPerFieldToJson.startTime(startTime as DateTime),
      if (startTimeFieldValue != null)
        _$ReservationModelFieldMap['startTime']!: startTimeFieldValue,
      if (endTime != _sentinel)
        _$ReservationModelFieldMap['endTime']!:
            _$ReservationModelPerFieldToJson.endTime(endTime as DateTime),
      if (endTimeFieldValue != null)
        _$ReservationModelFieldMap['endTime']!: endTimeFieldValue,
      if (username != _sentinel)
        _$ReservationModelFieldMap['username']!:
            _$ReservationModelPerFieldToJson.username(username as String),
      if (usernameFieldValue != null)
        _$ReservationModelFieldMap['username']!: usernameFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? tableId = _sentinel,
    FieldValue? tableIdFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
    Object? username = _sentinel,
    FieldValue? usernameFieldValue,
  }) {
    assert(
      tableId == _sentinel || tableIdFieldValue == null,
      "Cannot specify both tableId and tableIdFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    assert(
      username == _sentinel || usernameFieldValue == null,
      "Cannot specify both username and usernameFieldValue",
    );
    final json = {
      if (tableId != _sentinel)
        _$ReservationModelFieldMap['tableId']!:
            _$ReservationModelPerFieldToJson.tableId(tableId as String),
      if (tableIdFieldValue != null)
        _$ReservationModelFieldMap['tableId']!: tableIdFieldValue,
      if (userId != _sentinel)
        _$ReservationModelFieldMap['userId']!:
            _$ReservationModelPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$ReservationModelFieldMap['userId']!: userIdFieldValue,
      if (startTime != _sentinel)
        _$ReservationModelFieldMap['startTime']!:
            _$ReservationModelPerFieldToJson.startTime(startTime as DateTime),
      if (startTimeFieldValue != null)
        _$ReservationModelFieldMap['startTime']!: startTimeFieldValue,
      if (endTime != _sentinel)
        _$ReservationModelFieldMap['endTime']!:
            _$ReservationModelPerFieldToJson.endTime(endTime as DateTime),
      if (endTimeFieldValue != null)
        _$ReservationModelFieldMap['endTime']!: endTimeFieldValue,
      if (username != _sentinel)
        _$ReservationModelFieldMap['username']!:
            _$ReservationModelPerFieldToJson.username(username as String),
      if (usernameFieldValue != null)
        _$ReservationModelFieldMap['username']!: usernameFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ReservationModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ReservationModelQuery
    implements QueryReference<ReservationModel, ReservationModelQuerySnapshot> {
  @override
  ReservationModelQuery limit(int limit);

  @override
  ReservationModelQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ReservationModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereTableId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereStartTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereEndTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ReservationModelQuery whereUsername({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ReservationModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByTableId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByStartTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByEndTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });

  ReservationModelQuery orderByUsername({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ReservationModelQuery
    extends QueryReference<ReservationModel, ReservationModelQuerySnapshot>
    implements ReservationModelQuery {
  _$ReservationModelQuery(
    this._collection, {
    required Query<ReservationModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ReservationModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ReservationModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ReservationModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ReservationModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ReservationModelQuery limit(int limit) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery limitToLast(int limit) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereTableId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReservationModelFieldMap['tableId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.tableId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.tableId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ReservationModelPerFieldToJson.tableId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .tableId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReservationModelPerFieldToJson.tableId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .tableId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ReservationModelPerFieldToJson.tableId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ReservationModelPerFieldToJson.tableId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereUserId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReservationModelFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ReservationModelPerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReservationModelPerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ReservationModelPerFieldToJson.userId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ReservationModelPerFieldToJson.userId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereStartTime({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReservationModelFieldMap['startTime']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.startTime(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson
                .startTime(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ReservationModelPerFieldToJson.startTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .startTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReservationModelPerFieldToJson
                .startTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .startTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$ReservationModelPerFieldToJson.startTime(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ReservationModelPerFieldToJson.startTime(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereEndTime({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReservationModelFieldMap['endTime']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.endTime(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.endTime(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ReservationModelPerFieldToJson.endTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .endTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReservationModelPerFieldToJson
                .endTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .endTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$ReservationModelPerFieldToJson.endTime(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ReservationModelPerFieldToJson.endTime(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery whereUsername({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReservationModelFieldMap['username']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.username(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReservationModelPerFieldToJson.username(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ReservationModelPerFieldToJson.username(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .username(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReservationModelPerFieldToJson.username(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReservationModelPerFieldToJson
                .username(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ReservationModelPerFieldToJson.username(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ReservationModelPerFieldToJson.username(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByTableId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ReservationModelFieldMap['tableId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ReservationModelFieldMap['userId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByStartTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ReservationModelFieldMap['startTime']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByEndTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ReservationModelFieldMap['endTime']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReservationModelQuery orderByUsername({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReservationModelDocumentSnapshot? startAtDocument,
    ReservationModelDocumentSnapshot? endAtDocument,
    ReservationModelDocumentSnapshot? endBeforeDocument,
    ReservationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ReservationModelFieldMap['username']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ReservationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ReservationModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ReservationModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ReservationModel> {
  ReservationModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ReservationModel> snapshot;

  @override
  ReservationModelDocumentReference get reference {
    return ReservationModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ReservationModel? data;
}

class ReservationModelQuerySnapshot extends FirestoreQuerySnapshot<
    ReservationModel, ReservationModelQueryDocumentSnapshot> {
  ReservationModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ReservationModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ReservationModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ReservationModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ReservationModelDocumentSnapshot._,
      );
    }).toList();

    return ReservationModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ReservationModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ReservationModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ReservationModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ReservationModel> snapshot;

  @override
  final List<ReservationModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ReservationModelDocumentSnapshot>>
      docChanges;
}

class ReservationModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ReservationModel>
    implements ReservationModelDocumentSnapshot {
  ReservationModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ReservationModel> snapshot;

  @override
  final ReservationModel data;

  @override
  ReservationModelDocumentReference get reference {
    return ReservationModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      id: json['id'] as String,
      tableId: json['tableId'] as String,
      userId: json['userId'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      username: json['username'] as String,
    );

const _$ReservationModelFieldMap = <String, String>{
  'id': 'id',
  'tableId': 'tableId',
  'userId': 'userId',
  'startTime': 'startTime',
  'endTime': 'endTime',
  'username': 'username',
};

// ignore: unused_element
abstract class _$ReservationModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? tableId(String instance) => instance;
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? startTime(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? endTime(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? username(String instance) => instance;
}

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tableId': instance.tableId,
      'userId': instance.userId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'username': instance.username,
    };
