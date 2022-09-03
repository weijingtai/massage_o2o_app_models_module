import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import '../service_event_model.dart';

part 'appointment_service_event_model.g.dart';

@JsonSerializable()
class AppointmentServiceEventModel extends ServiceEventModel {
  late AppointmentEventTypeEnum event;
  AppointmentServiceEventModel({
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
          type: ServiceEventTypeEnum.Appointment,
        );
  factory AppointmentServiceEventModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentServiceEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentServiceEventModelToJson(this);
}
