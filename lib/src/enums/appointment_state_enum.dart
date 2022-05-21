import 'package:json_annotation/json_annotation.dart';

enum AppointmentStateEnum{
  @JsonValue(0)
  appointed,
  @JsonValue(1)
  canceled,
  @JsonValue(2)
  serving,
  @JsonValue(3)
  soon,
  @JsonValue(4)
  unavailable
}