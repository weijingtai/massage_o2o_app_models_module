import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import '../service_event_model.dart';

part 'serving_event_model.g.dart';

@JsonSerializable()
class ServingEventModel extends ServiceEventModel {
  late ServingEventTypeEnum event;
  ServingEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required this.event,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatedAt: operatedAt,
          type: ServiceEventTypeEnum.Serving,
        );
  factory ServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$ServingEventModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ServingEventModelToJson(this);
}
