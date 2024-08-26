// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

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
abstract class TableModelCollectionReference
    implements
        TableModelQuery,
        FirestoreCollectionReference<TableModel, TableModelQuerySnapshot> {
  factory TableModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TableModelCollectionReference;

  static TableModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return TableModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    TableModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<TableModel> get reference;

  @override
  TableModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TableModelDocumentReference> add(TableModel value);
}

class _$TableModelCollectionReference extends _$TableModelQuery
    implements TableModelCollectionReference {
  factory _$TableModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TableModelCollectionReference._(
      firestore.collection('tables').withConverter(
            fromFirestore: TableModelCollectionReference.fromFirestore,
            toFirestore: TableModelCollectionReference.toFirestore,
          ),
    );
  }

  _$TableModelCollectionReference._(
    CollectionReference<TableModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<TableModel> get reference =>
      super.reference as CollectionReference<TableModel>;

  @override
  TableModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TableModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TableModelDocumentReference> add(TableModel value) {
    return reference.add(value).then((ref) => TableModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TableModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TableModelDocumentReference
    extends FirestoreDocumentReference<TableModel, TableModelDocumentSnapshot> {
  factory TableModelDocumentReference(DocumentReference<TableModel> reference) =
      _$TableModelDocumentReference;

  DocumentReference<TableModel> get reference;

  /// A reference to the [TableModelCollectionReference] containing this document.
  TableModelCollectionReference get parent {
    return _$TableModelCollectionReference(reference.firestore);
  }

  @override
  Stream<TableModelDocumentSnapshot> snapshots();

  @override
  Future<TableModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    int chairs,
    FieldValue chairsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    int chairs,
    FieldValue chairsFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    int chairs,
    FieldValue chairsFieldValue,
  });
}

class _$TableModelDocumentReference
    extends FirestoreDocumentReference<TableModel, TableModelDocumentSnapshot>
    implements TableModelDocumentReference {
  _$TableModelDocumentReference(this.reference);

  @override
  final DocumentReference<TableModel> reference;

  /// A reference to the [TableModelCollectionReference] containing this document.
  TableModelCollectionReference get parent {
    return _$TableModelCollectionReference(reference.firestore);
  }

  @override
  Stream<TableModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TableModelDocumentSnapshot._);
  }

  @override
  Future<TableModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TableModelDocumentSnapshot._);
  }

  @override
  Future<TableModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TableModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? chairs = _sentinel,
    FieldValue? chairsFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      chairs == _sentinel || chairsFieldValue == null,
      "Cannot specify both chairs and chairsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$TableModelFieldMap['name']!:
            _$TableModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$TableModelFieldMap['name']!: nameFieldValue,
      if (chairs != _sentinel)
        _$TableModelFieldMap['chairs']!:
            _$TableModelPerFieldToJson.chairs(chairs as int),
      if (chairsFieldValue != null)
        _$TableModelFieldMap['chairs']!: chairsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? chairs = _sentinel,
    FieldValue? chairsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      chairs == _sentinel || chairsFieldValue == null,
      "Cannot specify both chairs and chairsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$TableModelFieldMap['name']!:
            _$TableModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$TableModelFieldMap['name']!: nameFieldValue,
      if (chairs != _sentinel)
        _$TableModelFieldMap['chairs']!:
            _$TableModelPerFieldToJson.chairs(chairs as int),
      if (chairsFieldValue != null)
        _$TableModelFieldMap['chairs']!: chairsFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? chairs = _sentinel,
    FieldValue? chairsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      chairs == _sentinel || chairsFieldValue == null,
      "Cannot specify both chairs and chairsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$TableModelFieldMap['name']!:
            _$TableModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$TableModelFieldMap['name']!: nameFieldValue,
      if (chairs != _sentinel)
        _$TableModelFieldMap['chairs']!:
            _$TableModelPerFieldToJson.chairs(chairs as int),
      if (chairsFieldValue != null)
        _$TableModelFieldMap['chairs']!: chairsFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TableModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TableModelQuery
    implements QueryReference<TableModel, TableModelQuerySnapshot> {
  @override
  TableModelQuery limit(int limit);

  @override
  TableModelQuery limitToLast(int limit);

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
  TableModelQuery whereFieldPath(
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

  TableModelQuery whereDocumentId({
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

  TableModelQuery whereName({
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

  TableModelQuery whereChairs({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
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
  TableModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  });

  TableModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  });

  TableModelQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  });

  TableModelQuery orderByChairs({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  });
}

class _$TableModelQuery
    extends QueryReference<TableModel, TableModelQuerySnapshot>
    implements TableModelQuery {
  _$TableModelQuery(
    this._collection, {
    required Query<TableModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TableModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(TableModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TableModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(TableModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TableModelQuery limit(int limit) {
    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TableModelQuery limitToLast(int limit) {
    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TableModelQuery whereFieldPath(
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
    return _$TableModelQuery(
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
  TableModelQuery whereDocumentId({
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
    return _$TableModelQuery(
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
  TableModelQuery whereName({
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
    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TableModelFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TableModelPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TableModelPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TableModelPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TableModelPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TableModelPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TableModelPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TableModelPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$TableModelPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TableModelQuery whereChairs({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TableModelFieldMap['chairs']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TableModelPerFieldToJson.chairs(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TableModelPerFieldToJson.chairs(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$TableModelPerFieldToJson.chairs(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TableModelPerFieldToJson.chairs(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TableModelPerFieldToJson.chairs(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TableModelPerFieldToJson.chairs(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$TableModelPerFieldToJson.chairs(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$TableModelPerFieldToJson.chairs(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TableModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
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

    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TableModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
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

    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TableModelQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TableModelFieldMap['name']!,
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

    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TableModelQuery orderByChairs({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TableModelDocumentSnapshot? startAtDocument,
    TableModelDocumentSnapshot? endAtDocument,
    TableModelDocumentSnapshot? endBeforeDocument,
    TableModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TableModelFieldMap['chairs']!, descending: descending);
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

    return _$TableModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TableModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TableModelDocumentSnapshot extends FirestoreDocumentSnapshot<TableModel> {
  TableModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<TableModel> snapshot;

  @override
  TableModelDocumentReference get reference {
    return TableModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final TableModel? data;
}

class TableModelQuerySnapshot extends FirestoreQuerySnapshot<TableModel,
    TableModelQueryDocumentSnapshot> {
  TableModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TableModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<TableModel> snapshot,
  ) {
    final docs = snapshot.docs.map(TableModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TableModelDocumentSnapshot._,
      );
    }).toList();

    return TableModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TableModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TableModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TableModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<TableModel> snapshot;

  @override
  final List<TableModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TableModelDocumentSnapshot>> docChanges;
}

class TableModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<TableModel>
    implements TableModelDocumentSnapshot {
  TableModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<TableModel> snapshot;

  @override
  final TableModel data;

  @override
  TableModelDocumentReference get reference {
    return TableModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableModel _$TableModelFromJson(Map<String, dynamic> json) => TableModel(
      id: json['id'] as String,
      name: json['name'] as String,
      chairs: (json['chairs'] as num).toInt(),
    );

const _$TableModelFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'chairs': 'chairs',
};

// ignore: unused_element
abstract class _$TableModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? chairs(int instance) => instance;
}

Map<String, dynamic> _$TableModelToJson(TableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'chairs': instance.chairs,
    };
