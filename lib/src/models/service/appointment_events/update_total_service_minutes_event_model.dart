import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';

import 'appointment_service_event_model.dart';

part 'update_total_service_minutes_event_model.g.dart';

@JsonSerializable()
class UpdateTotalServiceMinutesEventModel extends AppointmentServiceEventModel {
  int from;
  int to;
  UpdateTotalServiceMinutesEventModel({
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
          event: AppointmentEventTypeEnum.UpdateTotalServiceMinutes,
        );

  factory UpdateTotalServiceMinutesEventModel.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateTotalServiceMinutesEventModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$UpdateTotalServiceMinutesEventModelToJson(this);
}
