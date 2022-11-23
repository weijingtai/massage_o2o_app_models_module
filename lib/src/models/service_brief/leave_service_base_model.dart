import 'package:json_annotation/json_annotation.dart';
import 'sortable_service.dart';
part 'leave_service_base_model.g.dart';

@JsonSerializable()
class LeaveServiceBaseModel extends SortableService {
  int leaveDurationMinutes;
  DateTime createdAt;
  DateTime? modifiedAt;
  LeaveServiceBaseModel(
    DateTime startAt,
    this.leaveDurationMinutes,
    this.createdAt, {
    this.modifiedAt,
    bool isCanceled = false,
    List<int>? addSubMintes,
    DateTime? previousStartAt,
  }) : super(startAt, startAt.add(Duration(minutes: leaveDurationMinutes)),
            isCanceled: isCanceled,
            addSubMintes: addSubMintes,
            previousStartAt: previousStartAt);

  factory LeaveServiceBaseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveServiceBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$LeaveServiceBaseModelToJson(this);
}
