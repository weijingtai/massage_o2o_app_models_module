import 'package:json_annotation/json_annotation.dart';

import 'sortable_service.dart';
part 'serving_service_base_model.g.dart';

@JsonSerializable()
class ServingServiceBaseModel extends SortableService{
  String storeUid;
  String orderUid;
  String serviceUid;
  DateTime startAt;
  int serviceDurationMinutes;
  DateTime createdAt;
  DateTime? lastModifiedAt;

  ServingServiceBaseModel(
      this.storeUid,
      this.orderUid,
      this.serviceUid,
      this.startAt,
      this.serviceDurationMinutes,
      this.createdAt,
      {
        bool isCanceled = false,
        this.lastModifiedAt
      }):super(startAt,startAt.add(Duration(minutes: serviceDurationMinutes)),isCanceled :isCanceled);

  factory ServingServiceBaseModel.fromJson(Map<String, dynamic> json) => _$ServingServiceBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServingServiceBaseModelToJson(this);
}