// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

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
abstract class FoodItemCollectionReference
    implements
        FoodItemQuery,
        FirestoreCollectionReference<FoodItem, FoodItemQuerySnapshot> {
  factory FoodItemCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$FoodItemCollectionReference;

  static FoodItem fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return FoodItem.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    FoodItem value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<FoodItem> get reference;

  @override
  FoodItemDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<FoodItemDocumentReference> add(FoodItem value);
}

class _$FoodItemCollectionReference extends _$FoodItemQuery
    implements FoodItemCollectionReference {
  factory _$FoodItemCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$FoodItemCollectionReference._(
      firestore.collection('food_items').withConverter(
            fromFirestore: FoodItemCollectionReference.fromFirestore,
            toFirestore: FoodItemCollectionReference.toFirestore,
          ),
    );
  }

  _$FoodItemCollectionReference._(
    CollectionReference<FoodItem> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<FoodItem> get reference =>
      super.reference as CollectionReference<FoodItem>;

  @override
  FoodItemDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return FoodItemDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<FoodItemDocumentReference> add(FoodItem value) {
    return reference.add(value).then((ref) => FoodItemDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$FoodItemCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class FoodItemDocumentReference
    extends FirestoreDocumentReference<FoodItem, FoodItemDocumentSnapshot> {
  factory FoodItemDocumentReference(DocumentReference<FoodItem> reference) =
      _$FoodItemDocumentReference;

  DocumentReference<FoodItem> get reference;

  /// A reference to the [FoodItemCollectionReference] containing this document.
  FoodItemCollectionReference get parent {
    return _$FoodItemCollectionReference(reference.firestore);
  }

  @override
  Stream<FoodItemDocumentSnapshot> snapshots();

  @override
  Future<FoodItemDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    double price,
    FieldValue priceFieldValue,
    String imageUrl,
    FieldValue imageUrlFieldValue,
    String category,
    FieldValue categoryFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    double price,
    FieldValue priceFieldValue,
    String imageUrl,
    FieldValue imageUrlFieldValue,
    String category,
    FieldValue categoryFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    double price,
    FieldValue priceFieldValue,
    String imageUrl,
    FieldValue imageUrlFieldValue,
    String category,
    FieldValue categoryFieldValue,
  });
}

class _$FoodItemDocumentReference
    extends FirestoreDocumentReference<FoodItem, FoodItemDocumentSnapshot>
    implements FoodItemDocumentReference {
  _$FoodItemDocumentReference(this.reference);

  @override
  final DocumentReference<FoodItem> reference;

  /// A reference to the [FoodItemCollectionReference] containing this document.
  FoodItemCollectionReference get parent {
    return _$FoodItemCollectionReference(reference.firestore);
  }

  @override
  Stream<FoodItemDocumentSnapshot> snapshots() {
    return reference.snapshots().map(FoodItemDocumentSnapshot._);
  }

  @override
  Future<FoodItemDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(FoodItemDocumentSnapshot._);
  }

  @override
  Future<FoodItemDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(FoodItemDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? imageUrl = _sentinel,
    FieldValue? imageUrlFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      imageUrl == _sentinel || imageUrlFieldValue == null,
      "Cannot specify both imageUrl and imageUrlFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$FoodItemFieldMap['name']!:
            _$FoodItemPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$FoodItemFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$FoodItemFieldMap['description']!:
            _$FoodItemPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$FoodItemFieldMap['description']!: descriptionFieldValue,
      if (price != _sentinel)
        _$FoodItemFieldMap['price']!:
            _$FoodItemPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$FoodItemFieldMap['price']!: priceFieldValue,
      if (imageUrl != _sentinel)
        _$FoodItemFieldMap['imageUrl']!:
            _$FoodItemPerFieldToJson.imageUrl(imageUrl as String),
      if (imageUrlFieldValue != null)
        _$FoodItemFieldMap['imageUrl']!: imageUrlFieldValue,
      if (category != _sentinel)
        _$FoodItemFieldMap['category']!:
            _$FoodItemPerFieldToJson.category(category as String),
      if (categoryFieldValue != null)
        _$FoodItemFieldMap['category']!: categoryFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? imageUrl = _sentinel,
    FieldValue? imageUrlFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      imageUrl == _sentinel || imageUrlFieldValue == null,
      "Cannot specify both imageUrl and imageUrlFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$FoodItemFieldMap['name']!:
            _$FoodItemPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$FoodItemFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$FoodItemFieldMap['description']!:
            _$FoodItemPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$FoodItemFieldMap['description']!: descriptionFieldValue,
      if (price != _sentinel)
        _$FoodItemFieldMap['price']!:
            _$FoodItemPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$FoodItemFieldMap['price']!: priceFieldValue,
      if (imageUrl != _sentinel)
        _$FoodItemFieldMap['imageUrl']!:
            _$FoodItemPerFieldToJson.imageUrl(imageUrl as String),
      if (imageUrlFieldValue != null)
        _$FoodItemFieldMap['imageUrl']!: imageUrlFieldValue,
      if (category != _sentinel)
        _$FoodItemFieldMap['category']!:
            _$FoodItemPerFieldToJson.category(category as String),
      if (categoryFieldValue != null)
        _$FoodItemFieldMap['category']!: categoryFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? imageUrl = _sentinel,
    FieldValue? imageUrlFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      imageUrl == _sentinel || imageUrlFieldValue == null,
      "Cannot specify both imageUrl and imageUrlFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$FoodItemFieldMap['name']!:
            _$FoodItemPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$FoodItemFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$FoodItemFieldMap['description']!:
            _$FoodItemPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$FoodItemFieldMap['description']!: descriptionFieldValue,
      if (price != _sentinel)
        _$FoodItemFieldMap['price']!:
            _$FoodItemPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$FoodItemFieldMap['price']!: priceFieldValue,
      if (imageUrl != _sentinel)
        _$FoodItemFieldMap['imageUrl']!:
            _$FoodItemPerFieldToJson.imageUrl(imageUrl as String),
      if (imageUrlFieldValue != null)
        _$FoodItemFieldMap['imageUrl']!: imageUrlFieldValue,
      if (category != _sentinel)
        _$FoodItemFieldMap['category']!:
            _$FoodItemPerFieldToJson.category(category as String),
      if (categoryFieldValue != null)
        _$FoodItemFieldMap['category']!: categoryFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is FoodItemDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class FoodItemQuery
    implements QueryReference<FoodItem, FoodItemQuerySnapshot> {
  @override
  FoodItemQuery limit(int limit);

  @override
  FoodItemQuery limitToLast(int limit);

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
  FoodItemQuery whereFieldPath(
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

  FoodItemQuery whereDocumentId({
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

  FoodItemQuery whereName({
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

  FoodItemQuery whereDescription({
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

  FoodItemQuery wherePrice({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  FoodItemQuery whereImageUrl({
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

  FoodItemQuery whereCategory({
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
  FoodItemQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByPrice({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByImageUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });

  FoodItemQuery orderByCategory({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  });
}

class _$FoodItemQuery extends QueryReference<FoodItem, FoodItemQuerySnapshot>
    implements FoodItemQuery {
  _$FoodItemQuery(
    this._collection, {
    required Query<FoodItem> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<FoodItemQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(FoodItemQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<FoodItemQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(FoodItemQuerySnapshot._fromQuerySnapshot);
  }

  @override
  FoodItemQuery limit(int limit) {
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery limitToLast(int limit) {
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery whereFieldPath(
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
    return _$FoodItemQuery(
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
  FoodItemQuery whereDocumentId({
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
    return _$FoodItemQuery(
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
  FoodItemQuery whereName({
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
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FoodItemFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FoodItemPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FoodItemPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FoodItemPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$FoodItemPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery whereDescription({
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
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FoodItemFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FoodItemPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FoodItemPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FoodItemPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FoodItemPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery wherePrice({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FoodItemFieldMap['price']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.price(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.price(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$FoodItemPerFieldToJson.price(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.price(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FoodItemPerFieldToJson.price(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.price(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$FoodItemPerFieldToJson.price(e)),
        whereNotIn: whereNotIn?.map((e) => _$FoodItemPerFieldToJson.price(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery whereImageUrl({
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
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FoodItemFieldMap['imageUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.imageUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.imageUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FoodItemPerFieldToJson.imageUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.imageUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FoodItemPerFieldToJson.imageUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson
                .imageUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FoodItemPerFieldToJson.imageUrl(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FoodItemPerFieldToJson.imageUrl(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery whereCategory({
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
    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FoodItemFieldMap['category']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.category(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FoodItemPerFieldToJson.category(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FoodItemPerFieldToJson.category(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson.category(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FoodItemPerFieldToJson.category(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FoodItemPerFieldToJson
                .category(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FoodItemPerFieldToJson.category(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FoodItemPerFieldToJson.category(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FoodItemQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$FoodItemFieldMap['name']!,
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FoodItemFieldMap['description']!, descending: descending);
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$FoodItemFieldMap['price']!,
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByImageUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FoodItemFieldMap['imageUrl']!, descending: descending);
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FoodItemQuery orderByCategory({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FoodItemDocumentSnapshot? startAtDocument,
    FoodItemDocumentSnapshot? endAtDocument,
    FoodItemDocumentSnapshot? endBeforeDocument,
    FoodItemDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FoodItemFieldMap['category']!, descending: descending);
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

    return _$FoodItemQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$FoodItemQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class FoodItemDocumentSnapshot extends FirestoreDocumentSnapshot<FoodItem> {
  FoodItemDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<FoodItem> snapshot;

  @override
  FoodItemDocumentReference get reference {
    return FoodItemDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final FoodItem? data;
}

class FoodItemQuerySnapshot
    extends FirestoreQuerySnapshot<FoodItem, FoodItemQueryDocumentSnapshot> {
  FoodItemQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory FoodItemQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<FoodItem> snapshot,
  ) {
    final docs = snapshot.docs.map(FoodItemQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        FoodItemDocumentSnapshot._,
      );
    }).toList();

    return FoodItemQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<FoodItemDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    FoodItemDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<FoodItemDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<FoodItem> snapshot;

  @override
  final List<FoodItemQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<FoodItemDocumentSnapshot>> docChanges;
}

class FoodItemQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<FoodItem>
    implements FoodItemDocumentSnapshot {
  FoodItemQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<FoodItem> snapshot;

  @override
  final FoodItem data;

  @override
  FoodItemDocumentReference get reference {
    return FoodItemDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) => FoodItem(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image_url'] as String,
      category: json['category'] as String,
    );

const _$FoodItemFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'description': 'description',
  'price': 'price',
  'imageUrl': 'image_url',
  'category': 'category',
};

// ignore: unused_element
abstract class _$FoodItemPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
  // ignore: unused_element
  static Object? imageUrl(String instance) => instance;
  // ignore: unused_element
  static Object? category(String instance) => instance;
}

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'category': instance.category,
    };
