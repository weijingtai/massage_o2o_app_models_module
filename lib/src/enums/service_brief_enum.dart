import 'package:json_annotation/json_annotation.dart';

enum ServiceBriefEnum {
  @JsonValue("Serving")
  Serving,
  @JsonValue("Unavailable")
  Unavailable,
  @JsonValue("Appointment")
  Appointment
}
