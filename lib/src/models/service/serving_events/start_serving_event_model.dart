import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'start_serving_event_model.g.dart';

@JsonSerializable()
class StartServingEventModel extends ServingEventModel {
  DateTime asseretCompltedAt;
  StartServingEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
    required this.asseretCompltedAt,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatorAt: operatorAt,
          event: ServingEventTypeEnum.Start,
        );
  factory StartServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$StartServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$StartServingEventModelToJson(this);
}
