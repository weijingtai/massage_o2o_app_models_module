import 'package:equatable/equatable.dart';
import '../enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/service_duration_operate_enum.dart';

part 'service_duration_operation_unit.g.dart';

@JsonSerializable()
class ServiceDurationOperationUnit extends Comparable<ServiceDurationOperationUnit>{
  late String serviceGuid;
  late String guid;

  String operatorUid;

  DateTime operateAt;
  ServiceDurationOperateEnum operation;
  late int minutes;

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
  }):operateAt = DateTime.now(),this.operation=ServiceDurationOperateEnum.Increase;

  ServiceDurationOperationUnit.decrease(this.guid,{
    required this.serviceGuid,
    required this.operatorUid,
    required this.minutes,
  }):operateAt = DateTime.now(),this.operation=ServiceDurationOperateEnum.Decrease;


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
  static const _$ServiceDurationOperationTypeEnumMap = <ServiceDurationOperateEnum, String>{
    ServiceDurationOperateEnum.Increase: 'Increase',
    ServiceDurationOperateEnum.Decrease: "Decrease",
    ServiceDurationOperateEnum.Init: "Init",
  };

}



