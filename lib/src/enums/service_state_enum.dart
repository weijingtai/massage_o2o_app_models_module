import 'package:json_annotation/json_annotation.dart';

enum ServiceStateEnum{
  @JsonValue(0)
  NoMasterSelected,
  @JsonValue(1)
  preparing,
  @JsonValue(2)
  assigning,
  @JsonValue(3)
  reassigning,
  @JsonValue(4)
  serving,
  @JsonValue(5)
  master_changed,
  @JsonValue(6)
  waiting,
  @JsonValue(7)
  waiting_master,
  @JsonValue(8)
  reminded,
  @JsonValue(8)
  paused,
  @JsonValue(10)
  finished,
  @JsonValue(11)
  canceled
}