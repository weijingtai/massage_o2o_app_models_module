import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'cancel_serving_event_model.g.dart';

@JsonSerializable()
class CancelServingEventModel extends ServingEventModel {
  late int completedSeconds;
  CancelServingEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
    required this.completedSeconds,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatorAt: operatorAt,
          event: ServingEventTypeEnum.Cancel,
        );
  factory CancelServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$CancelServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$CancelServingEventModelToJson(this);
}
