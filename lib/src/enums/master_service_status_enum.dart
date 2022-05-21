import 'package:json_annotation/json_annotation.dart';

enum MasterServiceStatusEnum{
  @JsonValue("IDEL")
  IDLE,
  @JsonValue("ASSIGNING")
  ASSIGNING,
  @JsonValue("SERVING")
  SERVING,
  @JsonValue("ON_THE_WAY")
  ON_THE_WAY,
}