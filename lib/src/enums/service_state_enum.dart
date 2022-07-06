import 'package:json_annotation/json_annotation.dart';

enum ServiceStateEnum{
  @JsonValue("NoMasterSelected")
  NoMasterSelected,
  @JsonValue("Preparing")
  Preparing,
  @JsonValue("Assigning")
  Assigning,
  @JsonValue("Waiting")
  Waiting,
  @JsonValue("WaitingMaster")
  WaitingMaster,
  @JsonValue("Serving")
  Serving,
  @JsonValue("Paused")
  Paused,
  @JsonValue("Finished")
  Finished, // service end before apointment service duration completed
  @JsonValue("Completed")
  Completed,
  @JsonValue("canceled")
  Canceled,  // service totally canceled by HostUser,MasterUser,
  @JsonValue("Replaced")
  Replaced, // switch service to new service with other master, when service is started
}