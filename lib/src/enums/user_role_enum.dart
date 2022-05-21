import 'package:json_annotation/json_annotation.dart';

enum UserRoleEnum{
  @JsonValue("MASTER")
  MASTER,
  @JsonValue("HOST")
  HOST
}