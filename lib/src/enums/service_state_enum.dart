import 'package:json_annotation/json_annotation.dart';

enum ServiceStateEnum{
  @JsonValue("NoMasterSelected")
  NoMasterSelected,
  @JsonValue("preparing")
  preparing,
  @JsonValue("assigning")
  assigning,
  @JsonValue("reassigning")
  reassigning,
  @JsonValue("serving")
  serving,
  @JsonValue("master_changed")
  master_changed,
  @JsonValue("waiting")
  waiting,
  @JsonValue("waiting_master")
  waiting_master,
  @JsonValue("reminded")
  reminded,
  @JsonValue("paused")
  paused,
  @JsonValue("finished")
  finished,
  @JsonValue("canceled")
  canceled
}