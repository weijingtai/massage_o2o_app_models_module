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
  ServiceStateEnum.NoMasterSelected: 'NoMasterSelected',
  ServiceStateEnum.preparing: 'preparing',
  ServiceStateEnum.assigning: 'assigning',
  ServiceStateEnum.reassigning: 'reassigning',
  ServiceStateEnum.serving: 'serving',
  ServiceStateEnum.master_changed: 'master_changed',
  ServiceStateEnum.waiting: 'waiting',
  ServiceStateEnum.waiting_master: 'waiting_master',
  ServiceStateEnum.reminded: 'reminded',
  ServiceStateEnum.paused: 'paused',
  ServiceStateEnum.finished: 'finished',
  ServiceStateEnum.canceled: 'canceled',
};
