

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/enums.dart';

part 'assign_model.g.dart';

@JsonSerializable()
class AssignModel extends Equatable {

  late String guid;
  late String serviceGuid;
  late String orderGuid;

  late String masterUid;
  late String masterDisplayName;
  late String masterImageUrl;

  late String hostUid;

  late AssignStateEnum state;
  late int assignTimeoutSeconds;
  late int deliverTimeoutSeconds;

  @JsonKey(includeIfNull: false)
  DateTime? assignAt;
  @JsonKey(includeIfNull: false)
  DateTime? deliveredAt;
  // @JsonKey(includeIfNull: false)
  // DateTime? timeoutAt;
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
  DateTime? respondedAt;
  bool get isReplied {
    return state == AssignStateEnum.Accepted && state == AssignStateEnum.Rejected;
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
    required this.masterDisplayName,
    required this.masterImageUrl,
    required this.serviceGuid,
    required this.orderGuid,
    required this.hostUid,
    required this.assignTimeoutSeconds,
    required this.deliverTimeoutSeconds,
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