
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/base_assign_service_event.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'assign_service_event.g.dart';
@JsonSerializable()
class AssignServiceEvent extends BaseAssignServiceEvent{


  AssignServiceEvent({
    required String assignGuid,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    assignEvent: AssignEventEnum.Assign,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid,
      assignGuid: assignGuid);
  factory AssignServiceEvent.fromJson(Map<String, dynamic> json) => _$AssignServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$AssignServiceEventToJson(this);

}