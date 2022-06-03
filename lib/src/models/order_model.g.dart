// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map json) => OrderModel(
      json['guid'] as String,
      hostUid: json['hostUid'] as String,
      creatorUid: json['creatorUid'] as String,
      totalMinutes: json['totalMinutes'] as int,
      appointmentStartAt: DateTime.parse(json['appointmentStartAt'] as String),
      totalServices: json['totalServices'] as int,
      totalCustomers: json['totalCustomers'] as int,
      status: $enumDecodeNullable(_$OrderStatusEnumEnumMap, json['status']) ??
          OrderStatusEnum.Creating,
      previousStatus: $enumDecodeNullable(
              _$OrderStatusEnumEnumMap, json['previousStatus']) ??
          OrderStatusEnum.None,
      isNow: json['isNow'] as bool? ?? false,
      realStartAt: json['realStartAt'] == null
          ? null
          : DateTime.parse(json['realStartAt'] as String),
      allDoneAt: json['allDoneAt'] == null
          ? null
          : DateTime.parse(json['allDoneAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
    )..createdAt = DateTime.parse(json['createdAt'] as String);

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'hostUid': instance.hostUid,
    'creatorUid': instance.creatorUid,
    'totalMinutes': instance.totalMinutes,
    'totalCustomers': instance.totalCustomers,
    'totalServices': instance.totalServices,
    'createdAt': instance.createdAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  val['appointmentStartAt'] = instance.appointmentStartAt.toIso8601String();
  writeNotNull('realStartAt', instance.realStartAt?.toIso8601String());
  writeNotNull('allDoneAt', instance.allDoneAt?.toIso8601String());
  val['status'] = _$OrderStatusEnumEnumMap[instance.status];
  val['previousStatus'] = _$OrderStatusEnumEnumMap[instance.previousStatus];
  val['isNow'] = instance.isNow;
  return val;
}

const _$OrderStatusEnumEnumMap = {
  OrderStatusEnum.None: 'None',
  OrderStatusEnum.Creating: 'Creating',
  OrderStatusEnum.Assigning: 'Assigning',
  OrderStatusEnum.Waiting: 'Waiting',
  OrderStatusEnum.Serving: 'Serving',
  OrderStatusEnum.Canceled: 'Canceled',
  OrderStatusEnum.Completed: 'Completed',
};
