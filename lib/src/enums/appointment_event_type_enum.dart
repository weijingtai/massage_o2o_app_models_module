import 'package:json_annotation/json_annotation.dart';

enum AppointmentEventTypeEnum {
  @JsonValue("Setup")
  Setup,
  @JsonValue("UpdateAppointmentStartAt")
  UpdateAppointmentStartAt,
  @JsonValue("UpdateTotalServiceMinutes")
  UpdateTotalServiceMinutes,
  @JsonValue("Replace")
  Replace
}
