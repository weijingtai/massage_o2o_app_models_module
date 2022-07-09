// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map json) => Appointment(
      json['serviceGuid'] as String,
      DateTime.parse(json['appointmentAt'] as String),
      json['serviceDuration'] as int,
      $enumDecode(_$AppointmentStateEnumEnumMap, json['appointmentState']),
    );

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'appointmentAt': instance.appointmentAt.toIso8601String(),
      'serviceDuration': instance.serviceDuration,
      'appointmentState':
          _$AppointmentStateEnumEnumMap[instance.appointmentState],
    };

const _$AppointmentStateEnumEnumMap = {
  AppointmentStateEnum.Appointed: 'Appointed',
  AppointmentStateEnum.Canceled: 'Canceled',
  AppointmentStateEnum.Serving: 'Serving',
  AppointmentStateEnum.Soon: 'Soon',
  AppointmentStateEnum.Unavailable: 'Unavailable',
};
