import 'package:json_annotation/json_annotation.dart';

import '../enums/enums.dart';


part 'appointment_model.g.dart';

@JsonSerializable()
class Appointment{

  String serviceGuid ;
  DateTime appointmentAt;

  // @JsonKey(fromJson: JsonConverterUtils.durationFromMinutes, toJson: JsonConverterUtils.durationToMinutes)
  int serviceDuration;

  AppointmentStateEnum appointmentState;

  Appointment(this.serviceGuid,this.appointmentAt,this.serviceDuration,this.appointmentState);

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}