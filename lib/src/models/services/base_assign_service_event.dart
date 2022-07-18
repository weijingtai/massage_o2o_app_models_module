
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'base_assign_service_event.g.dart';
@JsonSerializable()
class BaseAssignServiceEvent extends ServiceEvent{

  String assignGuid;
  AssignEventEnum assignEvent;

  BaseAssignServiceEvent({
    required this.assignGuid,
    required this.assignEvent,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
      type: ServiceEventEnum.Assign,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid);
  factory BaseAssignServiceEvent.fromJson(Map<String, dynamic> json) => _$BaseAssignServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$BaseAssignServiceEventToJson(this);

}