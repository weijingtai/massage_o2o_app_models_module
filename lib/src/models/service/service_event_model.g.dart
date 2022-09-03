// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceEventModel _$ServiceEventModelFromJson(Map json) => ServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatorAt: DateTime.parse(json['operatorAt'] as String),
      type: $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$ServiceEventModelToJson(ServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatorAt': instance.operatorAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
    };

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
