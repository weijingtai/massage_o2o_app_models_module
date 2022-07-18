
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

part 'duration_service_event.g.dart';
@JsonSerializable()
class DurationServiceEvent extends ServiceEvent{

  int firstMinutes;
  int? secondMinutes;
  DurationEventEnum durationType;

  DurationServiceEvent({
    required String masterUid,
    required this.firstMinutes,
    this.secondMinutes,
    required this.durationType,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    type: ServiceEventEnum.Duration,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid);
  factory DurationServiceEvent.fromJson(Map<String, dynamic> json) => _$DurationServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$DurationServiceEventToJson(this);
}