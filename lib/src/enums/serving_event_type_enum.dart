import 'package:json_annotation/json_annotation.dart';

enum ServingEventTypeEnum {
  @JsonValue("Reset")
  Reset,
  @JsonValue("JumpTo")
  JumpTo,
  @JsonValue("Start")
  Start,
  @JsonValue("Pause")
  Pause,
  @JsonValue("Resume")
  Resume,
  @JsonValue("Cancel")
  Cancel,
  @JsonValue("Done")
  Done,
}
