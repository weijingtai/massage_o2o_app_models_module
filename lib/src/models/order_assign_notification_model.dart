import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';
import '../enums/enums.dart';
import 'base_user_info.dart';
import 'assign_model.dart';
import 'service_model.dart';

part 'order_assign_notification_model.g.dart';

@JsonSerializable()
class OrderAssignNotificationModel {

  late String orderGuid;
  late String serviceGuid;
  late String assignGuid;
  late String masterUid;
  late BaseUserInfo hostBaseInfo;
  late int totalServiceMinutes;
  late DateTime orderCreatedAt;
  DateTime? appointmentStartAt;
  late OrderStatusEnum orderState;
  late AssignStateEnum assignState;
  late DateTime assignAt;
  late int assignTimeoutSeconds;
  late int totalServiceNumber;


  OrderAssignNotificationModel({
    required this.orderGuid,
    required this.serviceGuid,
    required this.assignGuid,
    required this.masterUid,
    required this.hostBaseInfo,
    required this.totalServiceMinutes,
    required this.totalServiceNumber,
    required this.assignAt,
    required this.orderCreatedAt,
    this.appointmentStartAt,
    required this.assignTimeoutSeconds,
    this.orderState = OrderStatusEnum.Creating,
    this.assignState = AssignStateEnum.Assigning,
  });

  bool get isCanceled{
    return orderState == OrderStatusEnum.Canceled;
  }
  String get displayId{
    return DateFormat('yyyyMMddHHmm').format(orderCreatedAt);
  }

  factory OrderAssignNotificationModel.fromJson(Map<String, dynamic> json) => _$OrderAssignNotificationModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderAssignNotificationModelToJson(this);
}