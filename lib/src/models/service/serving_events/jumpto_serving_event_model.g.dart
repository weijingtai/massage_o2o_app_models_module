// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jumpto_serving_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JumpToServingEventModel _$JumpToServingEventModelFromJson(Map json) =>
    JumpToServingEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      from: json['from'] as int,
      to: json['to'] as int,
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$ServingEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$JumpToServingEventModelToJson(
        JumpToServingEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$ServingEventTypeEnumEnumMap[instance.event]!,
      'from': instance.from,
      'to': instance.to,
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
