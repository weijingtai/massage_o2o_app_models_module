// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DurationServiceEvent _$DurationServiceEventFromJson(Map json) =>
    DurationServiceEvent(
      masterUid: json['masterUid'] as String,
      firstMinutes: json['firstMinutes'] as int,
      secondMinutes: json['secondMinutes'] as int?,
      durationType:
          $enumDecode(_$DurationEventEnumEnumMap, json['durationType']),
      serviceGuid: json['serviceGuid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$DurationServiceEventToJson(
    DurationServiceEvent instance) {
  final val = <String, dynamic>{
    'serviceGuid': instance.serviceGuid,
    'masterUid': instance.masterUid,
    'guid': instance.guid,
    'operatorUid': instance.operatorUid,
    'operateAt': instance.operateAt.toIso8601String(),
    'firstMinutes': instance.firstMinutes,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('secondMinutes', instance.secondMinutes);
  val['durationType'] = _$DurationEventEnumEnumMap[instance.durationType];
  return val;
}

const _$DurationEventEnumEnumMap = {
  DurationEventEnum.Reset: 'Reset',
  DurationEventEnum.Rollback: 'Rollback',
  DurationEventEnum.JumpTo: 'JumpTo',
  DurationEventEnum.Add: 'Add',
  DurationEventEnum.Subtract: 'Subtract',
};
