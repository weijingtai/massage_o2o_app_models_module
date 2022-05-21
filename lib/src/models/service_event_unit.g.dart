// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_event_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEventUnit _$ServiceEventUnitFromJson(Map json) => ServiceEventUnit(
      json['guid'] as String,
      event: $enumDecode(_$ServiceEventEnumEnumMap, json['event']),
      eventAt: DateTime.parse(json['eventAt'] as String),
      eventSenderUid: json['eventSenderUid'] as String,
      serviceGuid: json['serviceGuid'] as String,
    );

Map<String, dynamic> _$ServiceEventUnitToJson(ServiceEventUnit instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'event': _$ServiceEventEnumEnumMap[instance.event],
      'eventAt': instance.eventAt.toIso8601String(),
      'eventSenderUid': instance.eventSenderUid,
    };

const _$ServiceEventEnumEnumMap = {
  ServiceEventEnum.Initiate: 0,
  ServiceEventEnum.assign: 1,
  ServiceEventEnum.customer_arrived: 2,
  ServiceEventEnum.reminded: 3,
  ServiceEventEnum.reset: 4,
  ServiceEventEnum.start: 5,
  ServiceEventEnum.pause: 6,
  ServiceEventEnum.recover: 7,
  ServiceEventEnum.cancel: 8,
  ServiceEventEnum.complete: 9,
  ServiceEventEnum.finish: 10,
};
