// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoundEntityImpl _$$RoundEntityImplFromJson(Map<String, dynamic> json) =>
    _$RoundEntityImpl(
      id: (json['id'] as num).toInt(),
      roundSeq: (json['roundSeq'] as num).toInt(),
      name: json['name'] as String,
      contentUnitList: (json['contentUnitList'] as List<dynamic>)
          .map((e) => ContentUnitEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoundEntityImplToJson(_$RoundEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roundSeq': instance.roundSeq,
      'name': instance.name,
      'contentUnitList':
          instance.contentUnitList.map((e) => e.toJson()).toList(),
    };
