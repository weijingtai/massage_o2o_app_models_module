import 'package:json_annotation/json_annotation.dart';


import '../enums/enums.dart';
import 'assign_model.dart';
import 'service_duration_operation_unit.dart';

import 'service_state_unit.dart';
import 'service_event_unit.dart';

part 'service_model.g.dart';

@JsonSerializable()
class ServiceModel {

  late String guid;
  late String orderGuid;
  late int seqInOrder;


  late String creatorUid;
  @JsonKey(includeIfNull: false)
  late String? masterUid;
  bool get isAssignCompleted{
    return masterUid != null;
  }

  @JsonKey(includeIfNull: false)
  int? totalServiceMinutes;
  int get serviceDurationInSeconds{
    return (totalServiceMinutes ?? 0) * 60;
  }
  int completedSeconds = 0; // when service paused, this value should re-calculate

  late DateTime createdAt;
  @JsonKey(includeIfNull: false)
  DateTime? lastModifiedAt;
  @JsonKey(includeIfNull: false)
  DateTime? deletedAt;

  // it's should same as order's appointmentStartAt
  // DateTime? appointmentStartAt;
  // late bool isNow;
  @JsonKey(includeIfNull: false)
  DateTime? realStartAt;
  @JsonKey(includeIfNull: false)
  DateTime? doneAt; // service real done at

  // late OnlineMasterAO currentMaster;


  // late Assign assign;
  late List<ServiceEventUnit> _eventUpdateList;
  late List<ServiceStateUnit> _stateUpdateList;
  late List<ServiceDurationOperationUnit>? _durationUpdateList;

  @JsonKey(includeIfNull: false)
  AssignModel? assign;

  ServiceModel(this.guid,{
    required this.seqInOrder,
    required this.creatorUid,
    required this.orderGuid,
    required this.createdAt,
    // required this.isNow,
    // this.appointmentStartAt,
    this.realStartAt,
    this.doneAt,
    this.lastModifiedAt,
    this.deletedAt,
    this.masterUid,
    this.completedSeconds = 0,
    this.assign,
    List<ServiceEventUnit>? eventList,
    List<ServiceStateUnit>? stateList,
    List<ServiceDurationOperationUnit>? durationUpdateList,
}){
    _eventUpdateList = eventList!=null&&eventList.isNotEmpty
        ?eventList
        :[];
    _stateUpdateList = stateList!=null&&stateList.isNotEmpty
        ?stateList:[];
    _durationUpdateList = durationUpdateList;
  }
  void addState(ServiceStateUnit newState){
    _stateUpdateList.add(newState);
  }
  // late bool isCanceled = false;
  ServiceStateEnum get currentState{
    return _stateUpdateList.last.state;
  }
  bool get isCanceled {
    return currentState == ServiceStateEnum.canceled;
  }

  factory ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);

}
