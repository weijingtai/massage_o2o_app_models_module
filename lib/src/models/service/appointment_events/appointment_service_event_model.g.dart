// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentServiceEventModel _$AppointmentServiceEventModelFromJson(Map json) =>
    AppointmentServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      event: $enumDecode(_$AppointmentEventTypeEnumEnumMap, json['event']),
    )..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']);

Map<String, dynamic> _$AppointmentServiceEventModelToJson(
        AppointmentServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$AppointmentEventTypeEnumEnumMap[instance.event]!,
    };

const _$AppointmentEventTypeEnumEnumMap = {
  AppointmentEventTypeEnum.Setup: 'Setup',
  AppointmentEventTypeEnum.UpdateAppointmentStartAt: 'UpdateAppointmentStartAt',
  AppointmentEventTypeEnum.UpdateTotalServiceMinutes:
      'UpdateTotalServiceMinutes',
  AppointmentEventTypeEnum.Replace: 'Replace',
};

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
