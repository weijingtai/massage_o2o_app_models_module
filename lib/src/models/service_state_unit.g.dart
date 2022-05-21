// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_state_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceStateUnit _$ServiceStateUnitFromJson(Map json) => ServiceStateUnit(
      serviceGuid: json['serviceGuid'] as String,
      eventGuid: json['eventGuid'] as String,
      state: $enumDecode(_$ServiceStateEnumEnumMap, json['state']),
      stateAt: DateTime.parse(json['stateAt'] as String),
    );

Map<String, dynamic> _$ServiceStateUnitToJson(ServiceStateUnit instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'eventGuid': instance.eventGuid,
      'state': _$ServiceStateEnumEnumMap[instance.state],
      'stateAt': instance.stateAt.toIso8601String(),
    };

const _$ServiceStateEnumEnumMap = {
  ServiceStateEnum.preparing: 0,
  ServiceStateEnum.assigning: 1,
  ServiceStateEnum.reassigning: 2,
  ServiceStateEnum.serving: 3,
  ServiceStateEnum.master_changed: 4,
  ServiceStateEnum.waiting: 5,
  ServiceStateEnum.waiting_master: 6,
  ServiceStateEnum.reminded: 7,
  ServiceStateEnum.paused: 8,
  ServiceStateEnum.finished: 9,
  ServiceStateEnum.canceled: 10,
};
