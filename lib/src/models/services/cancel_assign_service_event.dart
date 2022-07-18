
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/base_assign_service_event.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'cancel_assign_service_event.g.dart';
@JsonSerializable()
class CancelAssignServiceEvent extends BaseAssignServiceEvent{


  CancelAssignServiceEvent({
    required String assignGuid,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    assignEvent: AssignEventEnum.Cancel,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid,
      assignGuid: assignGuid);
  factory CancelAssignServiceEvent.fromJson(Map<String, dynamic> json) => _$CancelAssignServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$CancelAssignServiceEventToJson(this);

}