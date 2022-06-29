import 'package:json_annotation/json_annotation.dart';
enum AssignEventEnum{
@JsonValue("assign")
  assign,
@JsonValue("cancel")
  cancel,
@JsonValue("reject")
  reject,
@JsonValue("accept")
  accept,
@JsonValue("timeout")
  timeout
}