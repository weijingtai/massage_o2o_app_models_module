

import 'package:json_annotation/json_annotation.dart';
part 'sortable_service.g.dart';

@JsonSerializable()
class SortableService{
  DateTime startAt;
  DateTime endAt;
  late bool isCanceled;
  bool get isToday{
    return startAt.difference(DateTime.now()).inDays == 0;
  }
  SortableService(this.startAt,this.endAt,{this.isCanceled = false});
  factory SortableService.fromJson(Map<String, dynamic> json) => _$SortableServiceFromJson(json);
  Map<String, dynamic> toJson() => _$SortableServiceToJson(this);
}