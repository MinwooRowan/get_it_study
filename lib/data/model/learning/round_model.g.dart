// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoundModelImpl _$$RoundModelImplFromJson(Map<String, dynamic> json) =>
    _$RoundModelImpl(
      id: (json['id'] as num).toInt(),
      roundSeq: (json['roundSeq'] as num).toInt(),
      name: json['name'] as String,
      contentUnitList: (json['contentUnitList'] as List<dynamic>)
          .map((e) => ContentUnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoundModelImplToJson(_$RoundModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roundSeq': instance.roundSeq,
      'name': instance.name,
      'contentUnitList':
          instance.contentUnitList.map((e) => e.toJson()).toList(),
    };
