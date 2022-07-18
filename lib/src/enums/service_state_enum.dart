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
  @JsonValue("CustomerArrived")
  CustomerArrived,
  @JsonValue("Running")
  Running, // master user replied to CustomerArrived
  @JsonValue("Serving")
  Serving,
  @JsonValue("Paused")
  Paused,
  @JsonValue("Finished")
  Finished, // services end before apointment services duration completed
  @JsonValue("Completed")
  Completed,
  @JsonValue("Canceled")
  Canceled,  // services totally canceled by HostUser,MasterUser,
  @JsonValue("Replaced")
  Replaced, // switch services to new services with other master, when services is started
}