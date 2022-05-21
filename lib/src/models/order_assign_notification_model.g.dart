// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_assign_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderAssignNotificationModel _$OrderAssignNotificationModelFromJson(Map json) =>
    OrderAssignNotificationModel(
      orderGuid: json['orderGuid'] as String,
      serviceGuid: json['serviceGuid'] as String,
      assignGuid: json['assignGuid'] as String,
      masterUid: json['masterUid'] as String,
      hostBaseInfo: BaseUserInfo.fromJson(
          Map<String, dynamic>.from(json['hostBaseInfo'] as Map)),
      totalServiceMinutes: json['totalServiceMinutes'] as int,
      totalServiceNumber: json['totalServiceNumber'] as int,
      assignAt: DateTime.parse(json['assignAt'] as String),
      orderCreatedAt: DateTime.parse(json['orderCreatedAt'] as String),
      appointmentStartAt: json['appointmentStartAt'] == null
          ? null
          : DateTime.parse(json['appointmentStartAt'] as String),
      assignTimeoutSeconds: json['assignTimeoutSeconds'] as int,
      orderState:
          $enumDecodeNullable(_$OrderStatusEnumEnumMap, json['orderState']) ??
              OrderStatusEnum.Creating,
      assignState:
          $enumDecodeNullable(_$AssignStateEnumEnumMap, json['assignState']) ??
              AssignStateEnum.Assigning,
    );

Map<String, dynamic> _$OrderAssignNotificationModelToJson(
    OrderAssignNotificationModel instance) {
  final val = <String, dynamic>{
    'orderGuid': instance.orderGuid,
    'serviceGuid': instance.serviceGuid,
    'assignGuid': instance.assignGuid,
    'masterUid': instance.masterUid,
    'hostBaseInfo': instance.hostBaseInfo.toJson(),
    'totalServiceMinutes': instance.totalServiceMinutes,
    'orderCreatedAt': instance.orderCreatedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'appointmentStartAt', instance.appointmentStartAt?.toIso8601String());
  val['orderState'] = _$OrderStatusEnumEnumMap[instance.orderState];
  val['assignState'] = _$AssignStateEnumEnumMap[instance.assignState];
  val['assignAt'] = instance.assignAt.toIso8601String();
  val['assignTimeoutSeconds'] = instance.assignTimeoutSeconds;
  val['totalServiceNumber'] = instance.totalServiceNumber;
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

const _$AssignStateEnumEnumMap = {
  AssignStateEnum.Preparing: 'Preparing',
  AssignStateEnum.Delivering: 'Delivering',
  AssignStateEnum.Assigning: 'Assigning',
  AssignStateEnum.Canceled: 'Canceled',
  AssignStateEnum.Rejected: 'Rejected',
  AssignStateEnum.Accepted: 'Accepted',
  AssignStateEnum.Timeout: 'Timeout',
};
