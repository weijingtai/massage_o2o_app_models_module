import 'package:json_annotation/json_annotation.dart';
enum AssignEventEnum{
@JsonValue("Assign")
  Assign,
  @JsonValue("Unassign")
  Unassign,
  @JsonValue("Send")
  Send,
@JsonValue("Cancel")
  Cancel,
@JsonValue("Reject")
  Reject,
@JsonValue("Accept")
  Accept,
@JsonValue("Timeout")
  Timeout
}