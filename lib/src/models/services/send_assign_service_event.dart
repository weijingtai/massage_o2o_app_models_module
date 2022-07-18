
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/base_assign_service_event.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'send_assign_service_event.g.dart';
@JsonSerializable()
class SendAssignServiceEvent extends BaseAssignServiceEvent{
  bool isResend;


  SendAssignServiceEvent({
    required this.isResend,
    required String assignGuid,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    assignEvent: AssignEventEnum.Send,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid,
      assignGuid: assignGuid);
  factory SendAssignServiceEvent.fromJson(Map<String, dynamic> json) => _$SendAssignServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$SendAssignServiceEventToJson(this);

}