import 'package:json_annotation/json_annotation.dart';

enum AssignStateEnum {
  @JsonValue("Preparing")
  Preparing, // 准备中
  @JsonValue("Delivering")
  Delivering, // 指派正在发送到master端
  @JsonValue("Assigning")
  Assigning, // 等待对方应答
  @JsonValue("Canceled")
  Canceled, // 取消此次
  @JsonValue("Rejected")
  Rejected, // 对方拒绝
  @JsonValue("Accepted")
  Accepted, // 对方接受
  @JsonValue("Timeout")
  Timeout, // 超时
  @JsonValue("Deleted")
  Deleted // Deleted
}
