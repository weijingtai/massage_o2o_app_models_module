import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/convertors/datetime_utciso_to_local_convertor.dart';
import 'package:massage_o2o_app_models_module/src/enums/enums.dart';
part 'sortable_service.g.dart';

@JsonSerializable()
@DatetimeUTCISOJsonToLocalConvetor()
class SortableService {
  late ServiceBriefEnum type;
  late String guid;

  DateTime startAt;
  DateTime? endAt;
  // `null` or `[]` means no minutes add or sub
  // positive value is added minutes, negative value is sub minutes
  List<int>? addSubMinutes;

  // if this time is not null, means service startAt changed
  DateTime? previousStartAt;
  // replace isCanceled with DateTime?
  DateTime? canceledAt;
  // add lastModifiedAt
  DateTime? lastModifiedAt;

  late DateTime createdAt;

  // late bool isCanceled;
  bool get isToday {
    return startAt.difference(DateTime.now()).inDays == 0;
  }

  bool get isCanceled {
    return canceledAt != null;
  }

  SortableService(
    this.startAt,
    this.endAt, {
    required this.guid,
    required this.createdAt,
    required this.type,
    this.canceledAt,
    this.lastModifiedAt,
    this.addSubMinutes,
    this.previousStartAt,
  });

  factory SortableService.fromJson(Map<String, dynamic> json) =>
      _$SortableServiceFromJson(json);
  Map<String, dynamic> toJson() => _$SortableServiceToJson(this);
}
