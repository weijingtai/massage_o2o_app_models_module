import 'package:json_annotation/json_annotation.dart';
import 'sortable_service.dart';
part 'appointment_service_base_model.g.dart';

@JsonSerializable()
class AppointmentServiceBaseModel extends SortableService {
  String storeUid;
  String orderUid;
  String serviceUid;
  DateTime orderedStartAt;
  int serviceDurationMinutes;
  DateTime createdAt;
  DateTime? lastModifiedAt;

  AppointmentServiceBaseModel(
    this.storeUid,
    this.orderUid,
    this.serviceUid,
    this.orderedStartAt,
    this.serviceDurationMinutes,
    this.createdAt, {
    bool isCanceled = false,
    this.lastModifiedAt,
    List<int>? addSubMintes,
    DateTime? previousStartAt,
  }) : super(orderedStartAt,
            orderedStartAt.add(Duration(minutes: serviceDurationMinutes)),
            isCanceled: isCanceled,
            addSubMintes: addSubMintes,
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
