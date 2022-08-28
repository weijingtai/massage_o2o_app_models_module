import 'package:json_annotation/json_annotation.dart';

enum AssignEventEnum {
  @JsonValue("Init")
  Init,

  @JsonValue("Send")
  Send,
  @JsonValue("Received")
  Received,

  @JsonValue("Cancel")
  Cancel,
  @JsonValue("Reject")
  Reject,
  @JsonValue("Accept")
  Accept,
  @JsonValue("Timeout")
  Timeout
}
