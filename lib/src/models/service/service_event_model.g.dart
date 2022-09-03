// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEventModel _$ServiceEventModelFromJson(Map json) => ServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      type: $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$ServiceEventModelToJson(ServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
    };

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
