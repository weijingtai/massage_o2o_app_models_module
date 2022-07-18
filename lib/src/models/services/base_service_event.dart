
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';


part 'base_service_event.g.dart';
@JsonSerializable()
class BaseServiceEvent extends ServiceEvent {
  BaseServiceEvent({
    required ServiceEventEnum type,
    required String serviceGuid,
    required String masterUid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt,
  }):super(
    type: type,
    serviceGuid: serviceGuid,
    masterUid: masterUid,
    guid: guid,
    operatorUid: operatorUid,
    operateAt: operateAt,
  );
    factory BaseServiceEvent.fromJson(Map<String, dynamic> json) => _$BaseServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$BaseServiceEventToJson(this);

}