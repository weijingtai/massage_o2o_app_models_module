import 'package:json_annotation/json_annotation.dart';

enum ServiceEventTypeEnum {
  @JsonValue("Appointment")
  Appointment,
  @JsonValue("Assign")
  Assign,
  @JsonValue("Serving")
  Serving,
  @JsonValue("Others")
  Others,
}
