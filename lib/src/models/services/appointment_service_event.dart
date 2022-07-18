
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/services/service_event.dart';

part 'appointment_service_event.g.dart';
@JsonSerializable()
class AppointmentServiceEvent extends ServiceEvent{

  DateTime from;
  DateTime to;
  AppointmentDatetimeEventEnum appointmentDatetimeEvent;

  AppointmentServiceEvent({
    required String masterUid,
    required this.from,
    required this.to,
    required this.appointmentDatetimeEvent,
    required String serviceGuid,
    required String guid,
    required String operatorUid,
    required DateTime operateAt})
      :super(
    type: ServiceEventEnum.Appointment,
      serviceGuid: serviceGuid,
      guid: guid,
      operatorUid: operatorUid,
      operateAt: operateAt,
      masterUid: masterUid);
  factory AppointmentServiceEvent.fromJson(Map<String, dynamic> json) => _$AppointmentServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentServiceEventToJson(this);
}