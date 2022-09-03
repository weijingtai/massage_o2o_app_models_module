// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_total_service_minutes_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTotalServiceMinutesEventModel
    _$UpdateTotalServiceMinutesEventModelFromJson(Map json) =>
        UpdateTotalServiceMinutesEventModel(
          guid: json['guid'] as String,
          serviceGuid: json['serviceGuid'] as String,
          operatorUid: json['operatorUid'] as String,
          operatedAt: DateTime.parse(json['operatedAt'] as String),
          from: json['from'] as int,
          to: json['to'] as int,
        )
          ..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type'])
          ..event =
              $enumDecode(_$AppointmentEventTypeEnumEnumMap, json['event']);

Map<String, dynamic> _$UpdateTotalServiceMinutesEventModelToJson(
        UpdateTotalServiceMinutesEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$AppointmentEventTypeEnumEnumMap[instance.event]!,
      'from': instance.from,
      'to': instance.to,
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
