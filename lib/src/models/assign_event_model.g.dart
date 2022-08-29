// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignEventModel _$AssignEventModelFromJson(Map json) => AssignEventModel(
      guid: json['guid'] as String,
      assignGuid: json['assignGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
      event: $enumDecode(_$AssignEventEnumEnumMap, json['event']),
    );

Map<String, dynamic> _$AssignEventModelToJson(AssignEventModel instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'assignGuid': instance.assignGuid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
      'event': _$AssignEventEnumEnumMap[instance.event]!,
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
