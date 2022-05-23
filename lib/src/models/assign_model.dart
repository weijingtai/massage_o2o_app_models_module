

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/enums.dart';

part 'assign_model.g.dart';

@JsonSerializable()
class AssignModel extends Equatable {

  // assign's unique id
  String guid;
  // service which is assigned for
  String serviceGuid;
  // master which is assigned for
  String orderGuid;

  // assign received masterUser
  String masterUid;

  String hostUid;
  String senderUid; // Usually is hostUid

  AssignStateEnum state;
  // this field is used to store the order's status when the assign is created and send out.
  OrderStatusEnum currentOrderStatus;

  // after this timeout seconds, this assign will be expired
  int assignTimeoutSeconds;
  // after this timeout seconds, "UI" or "UE" layer should notify "hostUser" to re-send assign
  int deliverTimeoutSeconds;


  @JsonKey(includeIfNull: false)
  DateTime? assignAt;

  // masterUser should immediately send this assign to hostUser when he/she receive this assign
  @JsonKey(includeIfNull: false)
  DateTime? deliveredAt;


  DateTime? get assignTimeoutAt{
    if (assignAt != null){
      return assignAt?.add(Duration(seconds: assignTimeoutSeconds));
    }
    return null;
  }
  DateTime? get deliverTimeoutAt{
    if (assignAt != null){
      return assignAt?.add(Duration(seconds: deliverTimeoutSeconds));
    }
    return null;
  }
  int get maxTimeoutSeconds {
    return assignTimeoutSeconds;
  }
  @JsonKey(includeIfNull: false)
  DateTime? respondedAt; // when masterUser responded this assign("AssignStateEnum.ACCEPTED" or "AssignStateEnum.REJECTED")
  bool get isReplied {
    return respondedAt != null;
    // return state == AssignStateEnum.Accepted && state == AssignStateEnum.Rejected;
  }
  bool get isTimeout{
    if (state == AssignStateEnum.Timeout){
      return true;
    }
    if (state == AssignStateEnum.Assigning || state == AssignStateEnum.Delivering){
      return DateTime.now().isAfter(assignAt!.add(Duration(seconds: assignTimeoutSeconds)));
    }else{
      return false;
    }
  }

  AssignModel(
      this.guid,
  {
    required this.masterUid,
    required this.serviceGuid,
    required this.orderGuid,
    required this.hostUid,
    required this.assignTimeoutSeconds,
    required this.deliverTimeoutSeconds,
    required this.currentOrderStatus,
    required this.senderUid,
    this.state = AssignStateEnum.Preparing,
    this.assignAt,
  }){
    // timeoutAt = assignAt?.add(Duration(seconds: assignTimeoutSeconds + deliverTimeoutSeconds));
  }
  factory AssignModel.fromJson(Map<String, dynamic> json) => _$AssignModelFromJson(json);
  Map<String, dynamic> toJson() => _$AssignModelToJson(this);


  static const _$AssignStateEnumMap = <AssignStateEnum, String>{
    AssignStateEnum.Preparing: "Preparing",
    AssignStateEnum.Delivering: "Delivering",
    AssignStateEnum.Assigning: 'Assigning',
    AssignStateEnum.Canceled: 'Canceled',
    AssignStateEnum.Rejected: 'Rejected',
    AssignStateEnum.Accepted: 'Accepted',
    AssignStateEnum.Timeout: 'Timeout',
  };

  @override
  // TODO: implement props
  List<Object?> get props => [guid,serviceGuid,masterUid,state,assignAt,assignTimeoutAt];
}