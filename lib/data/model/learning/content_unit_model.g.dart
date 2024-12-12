// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_unit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentUnitModelImpl _$$ContentUnitModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentUnitModelImpl(
      id: (json['id'] as num).toInt(),
      seq: (json['seq'] as num).toInt(),
      unitName: json['unitName'] as String,
      contentUnitType:
          $enumDecode(_$ContentUnitTypeEnumMap, json['contentUnitType']),
      isCompleted: json['isCompleted'] as bool,
      reviewCount: (json['reviewCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ContentUnitModelImplToJson(
        _$ContentUnitModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seq': instance.seq,
      'unitName': instance.unitName,
      'contentUnitType': _$ContentUnitTypeEnumMap[instance.contentUnitType]!,
      'isCompleted': instance.isCompleted,
      'reviewCount': instance.reviewCount,
    };

const _$ContentUnitTypeEnumMap = {
  ContentUnitType.game: 'GAME',
  ContentUnitType.video: 'VIDEO',
  ContentUnitType.delayedRecall: 'DELAYED_RECALL',
  ContentUnitType.deem: 'DEEM',
};
