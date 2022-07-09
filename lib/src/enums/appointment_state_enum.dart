import 'package:json_annotation/json_annotation.dart';

enum AppointmentStateEnum{
  @JsonValue("Appointed")
  Appointed,
  @JsonValue("Canceled")
  Canceled,
  @JsonValue("Serving")
  Serving,
  @JsonValue("Soon")
  Soon,
  @JsonValue("Unavailable")
  Unavailable
}