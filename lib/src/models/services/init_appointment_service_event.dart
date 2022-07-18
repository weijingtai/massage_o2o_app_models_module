
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

import '../../../enums.dart';

part 'init_appointment_service_event.g.dart';
@JsonSerializable()
class InitAppointmentServiceEvent extends ServiceEvent{

  DateTime appointmentAt;
  int totalMinutes;
  InitAppointmentServiceEvent({
    required this.totalMinutes,
    required String masterUid,
    required this.appointmentAt,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
      type: ServiceEventEnum.InitAppointment,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid);
  factory InitAppointmentServiceEvent.fromJson(Map<String, dynamic> json) => _$InitAppointmentServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$InitAppointmentServiceEventToJson(this);

}