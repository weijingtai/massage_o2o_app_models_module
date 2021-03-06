// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignModel _$AssignModelFromJson(Map json) => AssignModel(
      json['guid'] as String,
      masterUid: json['masterUid'] as String,
      masterDisplayName: json['masterDisplayName'] as String,
      masterImageUrl: json['masterImageUrl'] as String,
      serviceGuid: json['serviceGuid'] as String,
      orderGuid: json['orderGuid'] as String,
      hostUid: json['hostUid'] as String,
      assignTimeoutSeconds: json['assignTimeoutSeconds'] as int,
      deliverTimeoutSeconds: json['deliverTimeoutSeconds'] as int,
      state: $enumDecodeNullable(_$AssignStateEnumEnumMap, json['state']) ??
          AssignStateEnum.Preparing,
      assignAt: json['assignAt'] == null
          ? null
          : DateTime.parse(json['assignAt'] as String),
    )
      ..deliveredAt = json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String)
      ..respondedAt = json['respondedAt'] == null
          ? null
          : DateTime.parse(json['respondedAt'] as String);

Map<String, dynamic> _$AssignModelToJson(AssignModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'serviceGuid': instance.serviceGuid,
    'orderGuid': instance.orderGuid,
    'masterUid': instance.masterUid,
    'masterDisplayName': instance.masterDisplayName,
    'masterImageUrl': instance.masterImageUrl,
    'hostUid': instance.hostUid,
    'state': _$AssignStateEnumEnumMap[instance.state],
    'assignTimeoutSeconds': instance.assignTimeoutSeconds,
    'deliverTimeoutSeconds': instance.deliverTimeoutSeconds,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assignAt', instance.assignAt?.toIso8601String());
  writeNotNull('deliveredAt', instance.deliveredAt?.toIso8601String());
  writeNotNull('respondedAt', instance.respondedAt?.toIso8601String());
  return val;
}

const _$AssignStateEnumEnumMap = {
  AssignStateEnum.Preparing: 'Preparing',
  AssignStateEnum.Delivering: 'Delivering',
  AssignStateEnum.Assigning: 'Assigning',
  AssignStateEnum.Canceled: 'Canceled',
  AssignStateEnum.Rejected: 'Rejected',
  AssignStateEnum.Accepted: 'Accepted',
  AssignStateEnum.Timeout: 'Timeout',
};
