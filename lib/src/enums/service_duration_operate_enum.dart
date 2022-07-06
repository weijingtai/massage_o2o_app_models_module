
import 'package:json_annotation/json_annotation.dart';

enum ServiceDurationOperateEnum{
  @JsonValue("Init")
  Init,
  @JsonValue("Increase")
  Increase,
  @JsonValue("Decrease")
  Decrease
}