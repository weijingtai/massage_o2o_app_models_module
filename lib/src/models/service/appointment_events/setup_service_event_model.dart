import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'appointment_service_event_model.dart';

part 'setup_service_event_model.g.dart';

@JsonSerializable()
class SetupServiceEventModel extends AppointmentServiceEventModel {
  DateTime appointmentStartAt;
  int totalServiceMinutes;
  SetupServiceEventModel({
    required String guid,
    required String serviceGuid,
    required String operatorUid,
    required DateTime operatedAt,
    required this.appointmentStartAt,
    required this.totalServiceMinutes,
  }) : super(
          guid: guid,
          serviceGuid: serviceGuid,
          operatorUid: operatorUid,
          operatedAt: operatedAt,
          event: AppointmentEventTypeEnum.Setup,
        );

  factory SetupServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$SetupServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$SetupServiceEventModelToJson(this);
}
