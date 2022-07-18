// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentServiceEvent _$AppointmentServiceEventFromJson(Map json) =>
    AppointmentServiceEvent(
      masterUid: json['masterUid'] as String,
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      appointmentDatetimeEvent: $enumDecode(
          _$AppointmentDatetimeEventEnumEnumMap,
          json['appointmentDatetimeEvent']),
      serviceGuid: json['serviceGuid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$AppointmentServiceEventToJson(
        AppointmentServiceEvent instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'masterUid': instance.masterUid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'appointmentDatetimeEvent': _$AppointmentDatetimeEventEnumEnumMap[
          instance.appointmentDatetimeEvent],
    };

const _$AppointmentDatetimeEventEnumEnumMap = {
  AppointmentDatetimeEventEnum.Postpone: 'Postpone',
  AppointmentDatetimeEventEnum.Beforehand: 'Beforehand',
};
