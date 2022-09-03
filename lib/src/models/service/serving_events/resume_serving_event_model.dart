import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'resume_serving_event_model.g.dart';

@JsonSerializable()
class ResumeServingEventModel extends ServingEventModel {
  late DateTime asseretCompltedAt;
  ResumeServingEventModel({
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
          event: ServingEventTypeEnum.Resume,
        );
  factory ResumeServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResumeServingEventModelToJson(this);
}
