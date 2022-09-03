import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import '../service_event_model.dart';

part 'others_service_event_model.g.dart';

@JsonSerializable()
class OthersServiceEventModel extends ServiceEventModel {
  late OthersEventTypeEnum event;
  OthersServiceEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
    required this.event,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatorAt: operatorAt,
          type: ServiceEventTypeEnum.Others,
        );
  factory OthersServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$OthersServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$OthersServiceEventModelToJson(this);

  factory OthersServiceEventModel.customerArrived({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
  }) =>
      OthersServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatorAt: operatorAt,
        event: OthersEventTypeEnum.CustomerArrived,
      );
  factory OthersServiceEventModel.masterOnTheWay({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
  }) =>
      OthersServiceEventModel(
        guid: guid,
        serviceGuid: serviceGuid,
        operatorUid: operatorUid,
        operatorAt: operatorAt,
        event: OthersEventTypeEnum.CustomerArrived,
      );
}
