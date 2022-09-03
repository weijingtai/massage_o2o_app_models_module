// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_serving_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelServingEventModel _$CancelServingEventModelFromJson(Map json) =>
    CancelServingEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatorAt: DateTime.parse(json['operatorAt'] as String),
      completedSeconds: json['completedSeconds'] as int,
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$ServingEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$CancelServingEventModelToJson(
        CancelServingEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatorAt': instance.operatorAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$ServingEventTypeEnumEnumMap[instance.event]!,
      'completedSeconds': instance.completedSeconds,
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
