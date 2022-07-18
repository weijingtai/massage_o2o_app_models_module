// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving_service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServingServiceEvent _$ServingServiceEventFromJson(Map json) =>
    ServingServiceEvent(
      state: $enumDecode(_$ServiceStateEnumEnumMap, json['state']),
      masterUid: json['masterUid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$ServingServiceEventToJson(
        ServingServiceEvent instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'masterUid': instance.masterUid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
      'state': _$ServiceStateEnumEnumMap[instance.state],
    };

const _$ServiceStateEnumEnumMap = {
  ServiceStateEnum.NoMasterSelected: 'NoMasterSelected',
  ServiceStateEnum.Preparing: 'Preparing',
  ServiceStateEnum.Assigning: 'Assigning',
  ServiceStateEnum.Waiting: 'Waiting',
  ServiceStateEnum.CustomerArrived: 'CustomerArrived',
  ServiceStateEnum.Running: 'Running',
  ServiceStateEnum.Serving: 'Serving',
  ServiceStateEnum.Paused: 'Paused',
  ServiceStateEnum.Finished: 'Finished',
  ServiceStateEnum.Completed: 'Completed',
  ServiceStateEnum.Canceled: 'Canceled',
  ServiceStateEnum.Replaced: 'Replaced',
};
