import 'package:json_annotation/json_annotation.dart';
enum OrderStatusEnum{
  @JsonValue("None")
  None,
  @JsonValue("Creating")
  Creating,
  @JsonValue("Assigning")
  Assigning,
  @JsonValue("Waiting")
  Waiting,
  @JsonValue("Serving")
  Serving,
  @JsonValue("Canceled")
  Canceled,
  @JsonValue("Completed")
  Completed
}