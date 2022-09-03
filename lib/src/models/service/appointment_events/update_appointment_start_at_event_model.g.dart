// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_appointment_start_at_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAppointmentStartAtEventModel _$UpdateAppointmentStartAtEventModelFromJson(
        Map json) =>
    UpdateAppointmentStartAtEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
    )
      ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
      ..event = $enumDecode(_$AppointmentEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$UpdateAppointmentStartAtEventModelToJson(
        UpdateAppointmentStartAtEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$AppointmentEventTypeEnumEnumMap[instance.event]!,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
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
