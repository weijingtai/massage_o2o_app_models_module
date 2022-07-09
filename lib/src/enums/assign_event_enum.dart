import 'package:json_annotation/json_annotation.dart';
enum AssignEventEnum{
@JsonValue("Assign")
  Assign,
@JsonValue("Cancel")
  Cancel,
@JsonValue("Reject")
  Reject,
@JsonValue("Accept")
  Accept,
@JsonValue("Timeout")
  Timeout
}