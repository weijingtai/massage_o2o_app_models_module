// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_duration_operation_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDurationOperationUnit _$ServiceDurationOperationUnitFromJson(Map json) =>
    ServiceDurationOperationUnit(
      json['guid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      operatorUid: json['operatorUid'] as String,
      minutes: json['minutes'] as int,
      operation:
          $enumDecode(_$ServiceDurationOperateEnumEnumMap, json['operation']),
      operateAt: DateTime.parse(json['operateAt'] as String),
    );

Map<String, dynamic> _$ServiceDurationOperationUnitToJson(
        ServiceDurationOperationUnit instance) =>
    <String, dynamic>{
      'serviceGuid': instance.serviceGuid,
      'guid': instance.guid,
      'operatorUid': instance.operatorUid,
      'minutes': instance.minutes,
      'operateAt': instance.operateAt.toIso8601String(),
      'operation': _$ServiceDurationOperateEnumEnumMap[instance.operation]!,
    };

const _$ServiceDurationOperateEnumEnumMap = {
  ServiceDurationOperateEnum.Init: 'Init',
  ServiceDurationOperateEnum.Increase: 'Increase',
  ServiceDurationOperateEnum.Decrease: 'Decrease',
};
