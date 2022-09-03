import 'package:json_annotation/json_annotation.dart';

enum ServiceEventEnum {
  @JsonValue(0)
  Initiate,
  @JsonValue(1)
  assign,
  @JsonValue(2)
  customer_arrived,
  @JsonValue(3)
  reminded,

  @JsonValue(4)
  reset,
  @JsonValue(5)
  start,
  @JsonValue(6)
  pause,
  @JsonValue(7)
  recover,
  @JsonValue(8)
  cancel,
  @JsonValue(9)
  complete,
  @JsonValue(10)
  finish
}
