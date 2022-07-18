
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

part 'serving_service_event.g.dart';
@JsonSerializable()
class ServingServiceEvent extends ServiceEvent{

  ServiceStateEnum state;

  ServingServiceEvent({
    required this.state,
    required String masterUid,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
      type: ServiceEventEnum.ServingEvent,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid);

  factory ServingServiceEvent.fromJson(Map<String, dynamic> json) => _$ServingServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$ServingServiceEventToJson(this);
}