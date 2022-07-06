import 'package:json_annotation/json_annotation.dart';


import '../enums/enums.dart';
import 'assign_model.dart';
import 'service_duration_operation_unit.dart';

// import 'service_state_unit.dart';
// import 'service_event_unit.dart';

part 'service_model.g.dart';

@JsonSerializable()
class ServiceModel {

  String guid;
  String orderGuid;
  int seqInOrder;
  String creatorUid;

  @JsonKey(includeIfNull: false)
  String? replacedByServiceGuid;

  @JsonKey(includeIfNull: false)
  String? assignedMasterUid;
  bool get isAssignCompleted{
    return assignedMasterUid != null;
  }

  @JsonKey(includeIfNull: false)
  int? totalServiceMinutes; // this is the total service minutes of the service.
  int get serviceDurationInSeconds{
    return (totalServiceMinutes ?? 0) * 60;
  }
  int completedSeconds = 0; // when service paused, this value should re-calculate

  DateTime createdAt;
  @JsonKey(includeIfNull: false)
  DateTime? lastModifiedAt;
  String? lastModifiedByUid;

  @JsonKey(includeIfNull: false)
  DateTime? deletedAt;
  @JsonKey(includeIfNull: false)
  String? assignGuid;

  // it's should same as order's appointmentStartAt
  // DateTime? appointmentStartAt;
  // late bool isNow;
  @JsonKey(includeIfNull: false)
  DateTime? startedAt;
  @JsonKey(includeIfNull: false)
  DateTime? completedAt; // service real done at
  @JsonKey(includeIfNull: false)
  DateTime? finishedAt;  // end before service completed
  @JsonKey(includeIfNull: false)
  DateTime? canceledAt;
  @JsonKey(includeIfNull: false)
  DateTime? replacedAt; // switch master when service already started (after serving, startedAt not null)
  @JsonKey(includeIfNull: false)
  DateTime? acceptedAt;
  ServiceStateEnum state;
  bool get isCanceled {
    return state == ServiceStateEnum.Canceled;
  }


  // // late Assign assign;
  // late List<ServiceEventUnit> _eventUpdateList;
  // late List<ServiceStateUnit> _stateUpdateList;
  List<ServiceDurationOperationUnit> serviceDurationUpdateList = [];


  ServiceModel({
    required this.guid,
    required this.orderGuid,
    required this.seqInOrder,
    required this.creatorUid,
    required this.state,
    required this.createdAt,
    this.completedSeconds = 0,
    this.replacedByServiceGuid,
    this.assignedMasterUid,
    this.totalServiceMinutes,
    this.lastModifiedAt,
    this.lastModifiedByUid,
    this.deletedAt,
    this.assignGuid,
    this.startedAt,
    this.completedAt,
    this.finishedAt,
    this.canceledAt,
    this.replacedAt,
    this.acceptedAt,
    this.serviceDurationUpdateList = const []
  });


  factory ServiceModel.fromJson(Map<String, dynamic> json) => _$ServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);

}
