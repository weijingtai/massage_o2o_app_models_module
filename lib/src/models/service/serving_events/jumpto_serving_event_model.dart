import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'serving_event_model.dart';

part 'jumpto_serving_event_model.g.dart';

@JsonSerializable()
class JumpToServingEventModel extends ServingEventModel {
  late int from;
  late int to;
  JumpToServingEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatorAt,
    required this.from,
    required this.to,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatorAt: operatorAt,
          event: ServingEventTypeEnum.JumpTo,
        );
  factory JumpToServingEventModel.fromJson(Map<String, dynamic> json) =>
      _$JumpToServingEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$JumpToServingEventModelToJson(this);
}
