import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'appointment_service_event_model.dart';

part 'replace_service_event_model.g.dart';

@JsonSerializable()
class ReplaceServiceEventModel extends AppointmentServiceEventModel {
  String replacedByServiceGuid;
  int completedSeconds;
  ReplaceServiceEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required this.replacedByServiceGuid,
    required this.completedSeconds,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatedAt: operatedAt,
          event: AppointmentEventTypeEnum.Replace,
        );

  factory ReplaceServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$ReplaceServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReplaceServiceEventModelToJson(this);
}
