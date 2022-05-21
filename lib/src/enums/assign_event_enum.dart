import 'package:json_annotation/json_annotation.dart';
enum AssignEventEnum{
@JsonValue(0)
  assign,
@JsonValue(1)
  cancel,
@JsonValue(2)
  reject,
@JsonValue(3)
  accept,
@JsonValue(4)
  timeout
}