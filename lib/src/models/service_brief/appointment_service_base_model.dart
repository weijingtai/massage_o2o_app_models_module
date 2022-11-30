import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/enums/enums.dart';
import '../../convertors/datetime_utciso_to_local_convertor.dart';
import 'sortable_service.dart';
part 'appointment_service_base_model.g.dart';

@JsonSerializable()
@DatetimeUTCISOJsonToLocalConvetor()
class AppointmentServiceBaseModel extends SortableService {
  String storeUid;
  String orderUid;
  String serviceUid;
  DateTime orderedStartAt;
  int serviceDurationMinutes;

  AppointmentServiceBaseModel({
    required this.storeUid,
    required this.orderUid,
    required this.serviceUid,
    required this.orderedStartAt,
    required this.serviceDurationMinutes,
    required String guid,
    required DateTime createdAt,
    DateTime? canceledAt,
    DateTime? lastModifiedAt,
    List<int>? addSubMinutes,
    DateTime? previousStartAt,
  }) : super(orderedStartAt,
            orderedStartAt.add(Duration(minutes: serviceDurationMinutes)),
            type: ServiceBriefEnum.Appointment,
            guid: guid,
            createdAt: createdAt,
            canceledAt: canceledAt,
            lastModifiedAt: lastModifiedAt,
            addSubMinutes: addSubMinutes,
            previousStartAt: previousStartAt);

  DateTime get orderedEndAt {
    return orderedStartAt.add(Duration(minutes: serviceDurationMinutes));
  }

  bool get isTodayAppointment {
    return orderedStartAt.difference(DateTime.now()).inDays == 0;
  }

  factory AppointmentServiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentServiceBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentServiceBaseModelToJson(this);
}
