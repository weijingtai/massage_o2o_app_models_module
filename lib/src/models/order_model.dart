import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';
import '../enums/enums.dart';

import 'assign_model.dart';
import 'service_model.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel {

  late String guid;
  late String hostUid;
  late String creatorUid;

  late int totalServiceMinutes;

  late int totalCustomers;
  late int totalServices;

  late DateTime createdAt;
  @JsonKey(includeIfNull: false)
  DateTime? deletedAt;
  @JsonKey(includeIfNull: false)
  DateTime? lastModifiedAt;

  // customer appointment service start at
  DateTime appointmentStartAt;

  @JsonKey(includeIfNull: false)
  late DateTime? realStartAt;
  @JsonKey(includeIfNull: false)
  late DateTime? allDoneAt;

  late OrderStatusEnum status;
  late OrderStatusEnum previousStatus;

  @JsonKey(defaultValue: false)
  bool isNow;

  // int get totalServices{
  //   return serviceList?.length ?? 0;
  // }

  // @JsonKey(includeIfNull: false)
  // List<ServiceModel>? serviceList;
  // @JsonKey(includeIfNull: false)
  // List<AssignModel>? assignList;

  OrderModel(this.guid,{
    required this.hostUid,
    required this.creatorUid,
    required this.totalServiceMinutes,
    required this.appointmentStartAt,
    required this.totalServices,
    required this.totalCustomers,
    this.status = OrderStatusEnum.Creating,
    this.previousStatus = OrderStatusEnum.None,
    this.isNow = true,
    this.realStartAt,
    this.allDoneAt,
    this.deletedAt,
    this.lastModifiedAt,
    // this.serviceList,
    // this.assignList,
    DateTime? orderCreateAt,
  }):createdAt = orderCreateAt??DateTime.now();

  bool get isDraft {
    return status == OrderStatusEnum.None;
  }
  bool get isCanceled{
    return status == OrderStatusEnum.Canceled;
  }
  String get userReadableIdentifier{
    return DateFormat('yyyyMMddHHmm').format(createdAt);
  }
  bool get isArchived{
    return checkIsArchived(status);
  }
  bool get isActivated{
    return checkIsActivated(status);
  }

  static bool checkIsActivated(OrderStatusEnum state){
    return [
      OrderStatusEnum.Creating,
      OrderStatusEnum.Assigning,
      OrderStatusEnum.Serving,
      OrderStatusEnum.Waiting].contains(state);
  }
  static bool checkIsArchived(OrderStatusEnum state){
    return [OrderStatusEnum.Completed,OrderStatusEnum.Canceled].contains(state);
  }
  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}