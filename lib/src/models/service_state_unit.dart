import '../enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';


part 'service_state_unit.g.dart';

@JsonSerializable()
class ServiceStateUnit extends Comparable<ServiceStateUnit>{
  late String serviceGuid;

  late String eventGuid;
  late ServiceStateEnum state;
  DateTime stateAt;

  ServiceStateUnit({
    required this.serviceGuid,
    required this.eventGuid,
    required this.state,
    required this.stateAt
  });


  factory ServiceStateUnit.fromJson(Map<String, dynamic> json) => _$ServiceStateUnitFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceStateUnitToJson(this);

  @override
  int compareTo(ServiceStateUnit other) {
    if (other.serviceGuid == serviceGuid && other.state == state){
      return 0;
    }
    return stateAt.compareTo(other.stateAt);
  }
}