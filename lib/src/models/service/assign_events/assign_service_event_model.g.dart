// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_service_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignServiceEventModel _$AssignServiceEventModelFromJson(Map json) =>
    AssignServiceEventModel(
      guid: json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operatedAt: DateTime.parse(json['operatedAt'] as String),
      assignGuid: json['assignGuid'] as String,
      assignMasterUid: json['assignMasterUid'] as String,
      event: $enumDecode(_$AssignEventEnumEnumMap, json['event']),
    )..type = $enumDecode(_$ServiceEventTypeEnumEnumMap, json['type']);

Map<String, dynamic> _$AssignServiceEventModelToJson(
        AssignServiceEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'serviceGuid': instance.serviceGuid,
      'operatorUid': instance.operatorUid,
      'operatedAt': instance.operatedAt.toIso8601String(),
      'type': _$ServiceEventTypeEnumEnumMap[instance.type]!,
      'assignGuid': instance.assignGuid,
      'event': _$AssignEventEnumEnumMap[instance.event]!,
      'assignMasterUid': instance.assignMasterUid,
    };

const _$AssignEventEnumEnumMap = {
  AssignEventEnum.Init: 'Init',
  AssignEventEnum.Send: 'Send',
  AssignEventEnum.Received: 'Received',
  AssignEventEnum.Cancel: 'Cancel',
  AssignEventEnum.Reject: 'Reject',
  AssignEventEnum.Accept: 'Accept',
  AssignEventEnum.Timeout: 'Timeout',
  AssignEventEnum.Delete: 'Delete',
};

const _$ServiceEventTypeEnumEnumMap = {
  ServiceEventTypeEnum.Appointment: 'Appointment',
  ServiceEventTypeEnum.Assign: 'Assign',
  ServiceEventTypeEnum.Serving: 'Serving',
  ServiceEventTypeEnum.Others: 'Others',
};
