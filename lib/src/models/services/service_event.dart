
import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';


part 'service_event.g.dart';
@JsonSerializable()
class ServiceEvent {
  final ServiceEventEnum type;
  final String serviceGuid;
  final String masterUid;
  final String guid;
  final String operatorUid;
  final DateTime operateAt;
  ServiceEvent({
    required this.type,
    required this.serviceGuid,
    required this.masterUid,
    required this.guid,
    required this.operatorUid,
    required this.operateAt,
  });
    factory ServiceEvent.fromJson(Map<String, dynamic> json) => _$ServiceEventFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceEventToJson(this);

}