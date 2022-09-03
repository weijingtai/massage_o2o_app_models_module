import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'appointment_service_event_model.dart';

part 'update_appointment_start_at_event_model.g.dart';

@JsonSerializable()
class UpdateAppointmentStartAtEventModel extends AppointmentServiceEventModel {
  DateTime from;
  DateTime to;
  UpdateAppointmentStartAtEventModel({
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
          event: AppointmentEventTypeEnum.UpdateAppointmentStartAt,
        );

  factory UpdateAppointmentStartAtEventModel.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateAppointmentStartAtEventModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$UpdateAppointmentStartAtEventModelToJson(this);
}
