// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodItemEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodItemEntityCopyWith<FoodItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemEntityCopyWith<$Res> {
  factory $FoodItemEntityCopyWith(
          FoodItemEntity value, $Res Function(FoodItemEntity) then) =
      _$FoodItemEntityCopyWithImpl<$Res, FoodItemEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double price,
      String imageUrl,
      String category});
}

/// @nodoc
class _$FoodItemEntityCopyWithImpl<$Res, $Val extends FoodItemEntity>
    implements $FoodItemEntityCopyWith<$Res> {
  _$FoodItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? category = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodItemEntityImplCopyWith<$Res>
    implements $FoodItemEntityCopyWith<$Res> {
  factory _$$FoodItemEntityImplCopyWith(_$FoodItemEntityImpl value,
          $Res Function(_$FoodItemEntityImpl) then) =
      __$$FoodItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      double price,
      String imageUrl,
      String category});
}

/// @nodoc
class __$$FoodItemEntityImplCopyWithImpl<$Res>
    extends _$FoodItemEntityCopyWithImpl<$Res, _$FoodItemEntityImpl>
    implements _$$FoodItemEntityImplCopyWith<$Res> {
  __$$FoodItemEntityImplCopyWithImpl(
      _$FoodItemEntityImpl _value, $Res Function(_$FoodItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? category = null,
  }) {
    return _then(_$FoodItemEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodItemEntityImpl implements _FoodItemEntity {
  const _$FoodItemEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.category});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double price;
  @override
  final String imageUrl;
  @override
  final String category;

  @override
  String toString() {
    return 'FoodItemEntity(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, price, imageUrl, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemEntityImplCopyWith<_$FoodItemEntityImpl> get copyWith =>
      __$$FoodItemEntityImplCopyWithImpl<_$FoodItemEntityImpl>(
          this, _$identity);
}

abstract class _FoodItemEntity implements FoodItemEntity {
  const factory _FoodItemEntity(
      {required final String id,
      required final String name,
      required final String description,
      required final double price,
      required final String imageUrl,
      required final String category}) = _$FoodItemEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get price;
  @override
  String get imageUrl;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$FoodItemEntityImplCopyWith<_$FoodItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
