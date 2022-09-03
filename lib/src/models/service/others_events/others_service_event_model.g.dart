// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'others_service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OthersServiceEventModel _$OthersServiceEventModelFromJson(Map json) =>
    OthersServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      event: $enumDecode(_$OthersEventTypeEnumEnumMap, json['event']),
    )..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']);

Map<String, dynamic> _$OthersServiceEventModelToJson(
        OthersServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'event': _$OthersEventTypeEnumEnumMap[instance.event]!,
    };

const _$OthersEventTypeEnumEnumMap = {
  OthersEventTypeEnum.CustomerArrived: 'CustomerArrived',
  OthersEventTypeEnum.MasterOnTheWay: 'CustomerArrived',
};

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
