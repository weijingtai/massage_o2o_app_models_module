// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_appointment_service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitAppointmentServiceEvent _$InitAppointmentServiceEventFromJson(Map json) =>
    InitAppointmentServiceEvent(
      totalMinutes: json['totalMinutes'] as int,
      masterUid: json['masterUid'] as String,
      appointmentAt: DateTime.parse(json['appointmentAt'] as String),
      serviceGuid: json['serviceGuid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$InitAppointmentServiceEventToJson(
        InitAppointmentServiceEvent instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'masterUid': instance.masterUid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
      'appointmentAt': instance.appointmentAt.toIso8601String(),
      'totalMinutes': instance.totalMinutes,
    };
