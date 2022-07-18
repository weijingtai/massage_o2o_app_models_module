import 'package:json_annotation/json_annotation.dart';


enum ServiceEventEnum{
  @JsonValue("InitAppointment")
  InitAppointment,
  @JsonValue("Duration")
  Duration,
  @JsonValue("AppointmentDatetime")
  Appointment,
  @JsonValue("Assign")
  Assign,
  @JsonValue("ServingEvent")
  ServingEvent,
}
enum ServingEventEnum{
  @JsonValue("Start")
  Start,
  @JsonValue("Pause")
  Pause,
  @JsonValue("Resume")
  Resume,
  @JsonValue("Stop")
  Stop,
  @JsonValue("Cancel")
  Cancel,
  @JsonValue("Complete")
  Complete,
  @JsonValue("Replace")
  Replace,
}

enum DurationEventEnum{

  @JsonValue("Reset")
  Reset, // reset to total service minutes
  @JsonValue("Rollback")
  Rollback, // rollback to given minutes
  @JsonValue("JumpTo")
  JumpTo, // jump to given minutes
  @JsonValue("Add")
  Add, // add given minutes
  @JsonValue("Subtract")
  Subtract, // subtract given minutes
}

enum AppointmentDatetimeEventEnum{
  @JsonValue("Postpone")
  Postpone,
  @JsonValue("Beforehand")
  Beforehand,
}