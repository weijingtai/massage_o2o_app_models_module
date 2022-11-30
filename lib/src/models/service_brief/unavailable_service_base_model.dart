import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/enums.dart';
import '../../convertors/datetime_utciso_to_local_convertor.dart';
import 'sortable_service.dart';
part 'unavailable_service_base_model.g.dart';

@JsonSerializable()
@DatetimeUTCISOJsonToLocalConvetor()
class UnavailableServiceBaseModel extends SortableService {
  int unavailableDurationMinutes;
  UnavailableServiceBaseModel(
    DateTime startAt,
    this.unavailableDurationMinutes, {
    required String guid,
    required DateTime createdAt,
    DateTime? lastModifiedAt,
    DateTime? canceledAt,
    List<int>? addSubMinutes,
    DateTime? previousStartAt,
  }) : super(
            startAt, startAt.add(Duration(minutes: unavailableDurationMinutes)),
            type: ServiceBriefEnum.Unavailable,
            guid: guid,
            createdAt: createdAt,
            canceledAt: canceledAt,
            lastModifiedAt: lastModifiedAt,
            addSubMinutes: addSubMinutes,
            previousStartAt: previousStartAt);

  factory UnavailableServiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$UnavailableServiceBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$UnavailableServiceBaseModelToJson(this);
}
