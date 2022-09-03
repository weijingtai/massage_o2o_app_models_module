import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'reset_serving_event_model.g.dart';

@JsonSerializable()
class ResetServingEventModel extends ServingEventModel {
  late int completedSeconds;
  ResetServingEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required this.completedSeconds,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatedAt: operatedAt,
          event: ServingEventTypeEnum.Reset,
        );
  factory ResetServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$ResetServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResetServingEventModelToJson(this);
}
