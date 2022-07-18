// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEvent _$ServiceEventFromJson(Map json) => ServiceEvent(
      type: $enumDecode(_$ServiceEventEnumEnumMap, json['type']),
      serviceGuid: json['serviceGuid'] as String,
      masterUid: json['masterUid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$ServiceEventToJson(ServiceEvent instance) =>
    <String, dynamic>{
      'type': _$ServiceEventEnumEnumMap[instance.type],
      'serviceGuid': instance.serviceGuid,
      'masterUid': instance.masterUid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
    };

const _$ServiceEventEnumEnumMap = {
  ServiceEventEnum.InitAppointment: 'InitAppointment',
  ServiceEventEnum.Duration: 'Duration',
  ServiceEventEnum.Appointment: 'AppointmentDatetime',
  ServiceEventEnum.Assign: 'Assign',
  ServiceEventEnum.ServingEvent: 'ServingEvent',
};
