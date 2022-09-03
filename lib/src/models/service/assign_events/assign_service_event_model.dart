import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import '../service_event_model.dart';
part 'assign_service_event_model.g.dart';

@JsonSerializable()
class AssignServiceEventModel extends ServiceEventModel {
  String assignGuid;
  AssignEventEnum event;
  String assignMasterUid;
  AssignServiceEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required this.assignGuid,
    required this.assignMasterUid,
    required this.event,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatedAt: operatedAt,
          type: ServiceEventTypeEnum.Assign,
        );
  factory AssignServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$AssignServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$AssignServiceEventModelToJson(this);

  factory AssignServiceEventModel.unselectMaster({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Delete,
        assignMasterUid: assignMasterUid,
      );
  factory AssignServiceEventModel.selectMaster({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Init,
        assignMasterUid: assignMasterUid,
      );
  factory AssignServiceEventModel.sendAssign({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Send,
        assignMasterUid: assignMasterUid,
      );
  factory AssignServiceEventModel.cancelAssign({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Cancel,
        assignMasterUid: assignMasterUid,
      );
  factory AssignServiceEventModel.acceptAssign({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Accept,
        assignMasterUid: assignMasterUid,
      );

  factory AssignServiceEventModel.rejectAssign({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required String assignGuid,
    required String assignMasterUid,
  }) =>
      AssignServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatedAt: operatedAt,
        assignGuid: assignGuid,
        event: AssignEventEnum.Reject,
        assignMasterUid: assignMasterUid,
      );
}
