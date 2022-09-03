import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'pause_serving_event_model.g.dart';

@JsonSerializable()
class PauseServingEventModel extends ServingEventModel {
  late int completedSeconds;
  PauseServingEventModel({
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
          event: ServingEventTypeEnum.Pause,
        );
  factory PauseServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$PauseServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$PauseServingEventModelToJson(this);
}
