// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetupServiceEventModel _$SetupServiceEventModelFromJson(Map json) =>
    SetupServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatorAt: DateTime.parse(json['operatorAt'] as String),
      appointmentStartAt: DateTime.parse(json['appointmentStartAt'] as String),
      totalServiceMinutes: json['totalServiceMinutes'] as int,
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$AppointmentEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$SetupServiceEventModelToJson(
        SetupServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatorAt': instance.operatorAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$AppointmentEventTypeEnumEnumMap[instance.event]!,
      'appointmentStartAt': instance.appointmentStartAt.toIso8601String(),
      'totalServiceMinutes': instance.totalServiceMinutes,
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
