import '../enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';


part 'service_event_unit.g.dart';

@JsonSerializable()
class ServiceEventUnit extends Comparable<ServiceEventUnit>{
  late String guid;

  late String serviceGuid;

  ServiceEventEnum event;
  DateTime eventAt;
  String eventSenderUid;

  ServiceEventUnit(this.guid,{
    required this.event,
    required this.eventAt,
    required this.eventSenderUid,
    required this.serviceGuid,
});
  factory ServiceEventUnit.fromJson(Map<String, dynamic> json) => _$ServiceEventUnitFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceEventUnitToJson(this);
  @override
  int compareTo(ServiceEventUnit other) {
    if (other.serviceGuid == serviceGuid && other.guid == guid && other.eventSenderUid == eventSenderUid){
      return 0;
    }
    return eventAt.compareTo(other.eventAt);
  }
}