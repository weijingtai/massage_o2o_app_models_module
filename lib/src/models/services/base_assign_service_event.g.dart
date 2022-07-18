// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_assign_service_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseAssignServiceEvent _$BaseAssignServiceEventFromJson(Map json) =>
    BaseAssignServiceEvent(
      assignGuid: json['assignGuid'] as String,
      assignEvent: $enumDecode(_$AssignEventEnumEnumMap, json['assignEvent']),
      masterUid: json['masterUid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      guid: json['guid'] as String,
      operatorUid: json['operatorUid'] as String,
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$BaseAssignServiceEventToJson(
        BaseAssignServiceEvent instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'masterUid': instance.masterUid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'operateAt': instance.operateAt.toIso8601String(),
      'assignGuid': instance.assignGuid,
      'assignEvent': _$AssignEventEnumEnumMap[instance.assignEvent],
    };

const _$AssignEventEnumEnumMap = {
  AssignEventEnum.Assign: 'Assign',
  AssignEventEnum.Unassign: 'Unassign',
  AssignEventEnum.Send: 'Send',
  AssignEventEnum.Cancel: 'Cancel',
  AssignEventEnum.Reject: 'Reject',
  AssignEventEnum.Accept: 'Accept',
  AssignEventEnum.Timeout: 'Timeout',
};
