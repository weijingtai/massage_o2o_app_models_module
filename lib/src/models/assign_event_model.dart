import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../enums/enums.dart';

part 'assign_event_model.g.dart';

@JsonSerializable(explicitToJson: true)
// ignore: must_be_immutable
class AssignEventModel extends Equatable {
  String guid;
  String assignGuid;
  String operatorUid;
  DateTime operateAt;
  AssignEventEnum event;
  AssignEventModel({
    required this.guid,
    required this.assignGuid,
    required this.operatorUid,
    required this.operateAt,
    required this.event,
  });

  factory AssignEventModel.fromJson(Map<String, dynamic> json) =>
      _$AssignEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$AssignEventModelToJson(this);

  @override
  List<Object?> get props => [guid, assignGuid, operatorUid, operateAt, event];
}
