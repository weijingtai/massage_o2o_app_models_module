import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/convertors/datetime_utciso_to_local_convertor.dart';

import 'sortable_service.dart';
part 'serving_service_base_model.g.dart';

@JsonSerializable()
@DatetimeUTCISOJsonToLocalConvetor()
class ServingServiceBaseModel extends SortableService {
  String storeUid;
  String orderUid;
  String serviceUid;
  int serviceDurationMinutes;
  int completedSeconds;

  // when value is `null` or `false`, current service is normal, service is rest when value is `true`
  // bool? isReset;
  DateTime? resetAt;
  bool get isReset => resetAt != null;
  ServingServiceBaseModel(
      {required this.storeUid,
      required this.orderUid,
      required this.serviceUid,
      required DateTime startAt,
      DateTime? endAt,
      required this.serviceDurationMinutes,
      required DateTime createdAt,
      required String guid,
      this.resetAt,
      this.completedSeconds = -1,
      List<int>? addSubMinutes,
      DateTime? previousStartAt,
      DateTime? canceledAt,
      DateTime? lastModifiedAt})
      : super(startAt, endAt,
            type: ServiceBriefEnum.Serving,
            guid: guid,
            createdAt: createdAt,
            canceledAt: canceledAt,
            lastModifiedAt: lastModifiedAt,
            addSubMinutes: addSubMinutes,
            previousStartAt: previousStartAt);

  factory ServingServiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ServingServiceBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ServingServiceBaseModelToJson(this);
}
