// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Merchandise _$MerchandiseFromJson(Map<String, dynamic> json) {
  return _Merchandise.fromJson(json);
}

/// @nodoc
mixin _$Merchandise {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchandiseCopyWith<Merchandise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandiseCopyWith<$Res> {
  factory $MerchandiseCopyWith(
          Merchandise value, $Res Function(Merchandise) then) =
      _$MerchandiseCopyWithImpl<$Res, Merchandise>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int price,
      String imageUrl,
      DateTime createdAt});
}

/// @nodoc
class _$MerchandiseCopyWithImpl<$Res, $Val extends Merchandise>
    implements $MerchandiseCopyWith<$Res> {
  _$MerchandiseCopyWithImpl(this._value, this._then);

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
    Object? createdAt = null,
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
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchandiseImplCopyWith<$Res>
    implements $MerchandiseCopyWith<$Res> {
  factory _$$MerchandiseImplCopyWith(
          _$MerchandiseImpl value, $Res Function(_$MerchandiseImpl) then) =
      __$$MerchandiseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int price,
      String imageUrl,
      DateTime createdAt});
}

/// @nodoc
class __$$MerchandiseImplCopyWithImpl<$Res>
    extends _$MerchandiseCopyWithImpl<$Res, _$MerchandiseImpl>
    implements _$$MerchandiseImplCopyWith<$Res> {
  __$$MerchandiseImplCopyWithImpl(
      _$MerchandiseImpl _value, $Res Function(_$MerchandiseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$MerchandiseImpl(
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
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MerchandiseImpl implements _Merchandise {
  const _$MerchandiseImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.createdAt});

  factory _$MerchandiseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchandiseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final String imageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Merchandise(id: $id, name: $name, description: $description, price: $price, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchandiseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, price, imageUrl, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchandiseImplCopyWith<_$MerchandiseImpl> get copyWith =>
      __$$MerchandiseImplCopyWithImpl<_$MerchandiseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchandiseImplToJson(
      this,
    );
  }
}

abstract class _Merchandise implements Merchandise {
  const factory _Merchandise(
      {required final String id,
      required final String name,
      required final String description,
      required final int price,
      required final String imageUrl,
      required final DateTime createdAt}) = _$MerchandiseImpl;

  factory _Merchandise.fromJson(Map<String, dynamic> json) =
      _$MerchandiseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get price;
  @override
  String get imageUrl;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MerchandiseImplCopyWith<_$MerchandiseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
