import 'package:json_annotation/json_annotation.dart';

enum ServiceStateEnum{
  @JsonValue(0)
  preparing,
  @JsonValue(1)
  assigning,
  @JsonValue(2)
  reassigning,
  @JsonValue(3)
  serving,
  @JsonValue(4)
  master_changed,
  @JsonValue(5)
  waiting,
  @JsonValue(6)
  waiting_master,
  @JsonValue(7)
  reminded,
  @JsonValue(8)
  paused,
  @JsonValue(9)
  finished,
  @JsonValue(10)
  canceled
}