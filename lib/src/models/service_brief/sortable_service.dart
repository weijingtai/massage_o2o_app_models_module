import 'package:json_annotation/json_annotation.dart';
part 'sortable_service.g.dart';

@JsonSerializable()
class SortableService {
  DateTime startAt;
  DateTime? endAt;
  // `null` or `[]` means no minutes add or sub
  // positive value is added minutes, negative value is sub minutes
  List<int>? addSubMintes;

  // if this time is not null, means service startAt changed
  DateTime? previousStartAt;
  late bool isCanceled;
  bool get isToday {
    return startAt.difference(DateTime.now()).inDays == 0;
  }

  SortableService(this.startAt, this.endAt,
      {this.isCanceled = false, this.addSubMintes, this.previousStartAt});
  factory SortableService.fromJson(Map<String, dynamic> json) =>
      _$SortableServiceFromJson(json);
  Map<String, dynamic> toJson() => _$SortableServiceToJson(this);
}
