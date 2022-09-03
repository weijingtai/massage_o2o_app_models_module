import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
part 'service_event_model.g.dart';

@JsonSerializable()
class ServiceEventModel {
  late String guid;
  late String serviceGuid;
  late String operatorUid;
  late DateTime operatorAt;
  late ServiceEventTypeEnum type;
  ServiceEventModel({
    required this.guid,
    required this.serviceGuid,
    required this.operatorUid,
    required this.operatorAt,
    required this.type,
  });
  factory ServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceEventModelToJson(this);
}
