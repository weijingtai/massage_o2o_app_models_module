// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReplaceServiceEventModel _$ReplaceServiceEventModelFromJson(Map json) =>
    ReplaceServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatorAt: DateTime.parse(json['operatorAt'] as String),
      replacedByServiceGuid: json['replacedByServiceGuid'] as String,
      completedSeconds: json['completedSeconds'] as int,
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$AppointmentEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$ReplaceServiceEventModelToJson(
        ReplaceServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatorAt': instance.operatorAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$AppointmentEventTypeEnumEnumMap[instance.event]!,
      'replacedByServiceGuid': instance.replacedByServiceGuid,
      'completedSeconds': instance.completedSeconds,
    };

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};

const _$AppointmentEventTypeEnumEnumMap = {
  AppointmentEventTypeEnum.Setup: 'Setup',
  AppointmentEventTypeEnum.UpdateAppointmentStartAt: 'UpdateAppointmentStartAt',
  AppointmentEventTypeEnum.UpdateTotalServiceMinutes:
      'UpdateTotalServiceMinutes',
  AppointmentEventTypeEnum.Replace: 'Replace',
};
