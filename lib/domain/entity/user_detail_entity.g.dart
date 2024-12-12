// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailEntityImpl _$$UserDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      address: json['address'] as String,
      company: json['company'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      vios: json['vios'] as String,
    );

Map<String, dynamic> _$$UserDetailEntityImplToJson(
        _$UserDetailEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'address': instance.address,
      'company': instance.company,
      'email': instance.email,
      'phone': instance.phone,
      'vios': instance.vios,
    };
