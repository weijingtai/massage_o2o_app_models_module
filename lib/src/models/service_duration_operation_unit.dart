import 'package:equatable/equatable.dart';
import '../enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_duration_operation_unit.g.dart';

@JsonSerializable()
class ServiceDurationOperationUnit extends Comparable<ServiceDurationOperationUnit>{
  late String serviceGuid;
  late String guid;

  String operatorUid;

  late int minutes;
  DateTime operateAt;
  ServiceDurationOperationTypeEnum operation;

  ServiceDurationOperationUnit(this.guid,{
    required this.serviceGuid,
    required this.operatorUid,
    required this.minutes,
    required this.operation,
    required this.operateAt
  });
  ServiceDurationOperationUnit.increase(this.guid,{
    required this.serviceGuid,
    required this.operatorUid,
    required this.minutes,
  }):operateAt = DateTime.now(),this.operation=ServiceDurationOperationTypeEnum.Increase;

  ServiceDurationOperationUnit.decrease(this.guid,{
    required this.serviceGuid,
    required this.operatorUid,
    required this.minutes,
  }):operateAt = DateTime.now(),this.operation=ServiceDurationOperationTypeEnum.Decrease;


  factory ServiceDurationOperationUnit.fromJson(Map<String, dynamic> json) => _$ServiceDurationOperationUnitFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceDurationOperationUnitToJson(this);

  @override
  int compareTo(ServiceDurationOperationUnit other) {
    if (other.serviceGuid == serviceGuid
        && other.guid == guid
        && other.operatorUid == operatorUid
        && other.minutes == minutes
        && other.operateAt == operateAt
        && other.operation == operation){
      return 0;
    }
    return operateAt.compareTo(other.operateAt);
  }
  static const _$ServiceDurationOperationTypeEnumMap = <ServiceDurationOperationTypeEnum, String>{
    ServiceDurationOperationTypeEnum.Increase: 'INCREASE',
    ServiceDurationOperationTypeEnum.Decrease: "DECREASE",
  };

}

enum ServiceDurationOperationTypeEnum{
  @JsonValue(1)
  Increase,
  @JsonValue(0)
  Decrease
}

