
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/base_assign_service_event.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'accept_assign_service_event.g.dart';
@JsonSerializable()
class AcceptAssignServiceEvent extends BaseAssignServiceEvent{


  AcceptAssignServiceEvent({
    required String assignGuid,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    assignEvent: AssignEventEnum.Accept,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid,
      assignGuid: assignGuid);
  factory AcceptAssignServiceEvent.fromJson(Map<String, dynamic> json) => _$AcceptAssignServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$AcceptAssignServiceEventToJson(this);

}