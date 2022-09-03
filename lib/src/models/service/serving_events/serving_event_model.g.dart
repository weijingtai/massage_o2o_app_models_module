// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServingEventModel _$ServingEventModelFromJson(Map json) => ServingEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatorAt: DateTime.parse(json['operatorAt'] as String),
      event: $enumDecode(_$ServingEventTypeEnumEnumMap, json['event']),
    )..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']);

Map<String, dynamic> _$ServingEventModelToJson(ServingEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatorAt': instance.operatorAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$ServingEventTypeEnumEnumMap[instance.event]!,
    };

const _$ServingEventTypeEnumEnumMap = {
  ServingEventTypeEnum.Reset: 'Reset',
  ServingEventTypeEnum.JumpTo: 'JumpTo',
  ServingEventTypeEnum.Start: 'Start',
  ServingEventTypeEnum.Pause: 'Pause',
  ServingEventTypeEnum.Resume: 'Resume',
  ServingEventTypeEnum.Cancel: 'Cancel',
  ServingEventTypeEnum.Done: 'Done',
};

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
