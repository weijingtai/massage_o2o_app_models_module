// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_serving_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResumeServingEventModel _$ResumeServingEventModelFromJson(Map json) =>
    ResumeServingEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      asseretCompltedAt: DateTime.parse(json['asseretCompltedAt'] as String),
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$ServingEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$ResumeServingEventModelToJson(
        ResumeServingEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$ServingEventTypeEnumEnumMap[instance.event]!,
      'asseretCompltedAt': instance.asseretCompltedAt.toIso8601String(),
    };

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
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
