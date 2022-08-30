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
  bool get isAssignCompleted {
    return assignedMasterUid != null;
  }

  @JsonKey(includeIfNull: false)
  int? totalServiceMinutes; // this is the total service minutes of the service.
  int get serviceDurationInSeconds {
    return (totalServiceMinutes ?? 0) * 60;
  }

  int completedSeconds =
      0; // when service paused, this value should re-calculate

  DateTime createdAt;

  // host user can set this filed manually. when service has especial appointment start time, this field should be set.
  // when appointmentStartAt is null and this service is assigned success, this value should be set same as order's appointmentStartAt value.
  @JsonKey(includeIfNull: false)
  DateTime? appointmentStartAt;
  @JsonKey(includeIfNull: false)
  DateTime? lastModifiedAt;
  String? lastModifiedByUid;

  @JsonKey(includeIfNull: false)
  DateTime? deletedAt;
  @JsonKey(includeIfNull: false)
  DateTime? canceledAt;
  @JsonKey(includeIfNull: false)
  String? assignGuid;

  // it's should same as order's appointmentStartAt
  // DateTime? appointmentStartAt;
  // late bool isNow;
  @JsonKey(includeIfNull: false)
  DateTime? startedAt;

  /// filed will be used as asset service is processing or completed when client side lost connection.
  ///
  /// this field should be calculate with startedAt set by startedAt.add(Duration(minutes: serviceDuration));
  /// and when duration updates(add/subtract), this field should be updated.
  /// when service state is Pause, this value should be removed
  /// when service state is Resumed from Pause, this value should be re-calculate
  @JsonKey(includeIfNull: false)
  DateTime? assertCompletedAt;
  @JsonKey(includeIfNull: false)
  DateTime? acceptedAt;
  @JsonKey(includeIfNull: false)
  DateTime?
      doneAt; // service last state is done including [Finished,  Completed,  Canceled,  Replaced]

  ServiceStateEnum state;
  bool get isCanceled => canceledAt != null;

  // // late Assign assign;
  // late List<ServiceEventUnit> _eventUpdateList;
  // late List<ServiceStateUnit> _stateUpdateList;
  List<ServiceDurationOperationUnit> serviceDurationUpdateList = [];

  ServiceModel(
      {required this.guid,
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
      this.assertCompletedAt,
      this.doneAt,
      this.acceptedAt,
      this.appointmentStartAt,
      this.canceledAt,
      this.serviceDurationUpdateList = const []});

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);
}
