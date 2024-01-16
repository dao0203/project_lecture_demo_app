// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchandise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchandiseImpl _$$MerchandiseImplFromJson(Map<String, dynamic> json) =>
    _$MerchandiseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      imageUrl: json['image_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$MerchandiseImplToJson(_$MerchandiseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };
