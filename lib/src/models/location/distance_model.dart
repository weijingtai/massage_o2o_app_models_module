import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'coordinate.dart';
import 'redis_coordinate.dart';
part 'distance_model.g.dart';

@JsonSerializable()
class DistanceModel {
  Coordinate coordinate;

  // straight-line distance
  double? rangeDistance;
  // km, m, mi, ft
  String? rangeDistanceUnit;

  // distance on the road
  double? travelDistance;
  // km, m, mi, ft
  String? travelDistanceUnit;

  // elapsed-time for travelDistance
  int? elapsedTime;
  // seconds, minutes
  String? elapsedTimeUnit;

  DateTime? calculateAt;

  DistanceModel(
    this.coordinate, {
    this.rangeDistance,
    this.rangeDistanceUnit,
    this.travelDistance,
    this.travelDistanceUnit,
    this.elapsedTime,
    this.elapsedTimeUnit,
    this.calculateAt,
  });

  factory DistanceModel.fromJson(Map<String, dynamic> json) =>
      _$DistanceModelFromJson(json);
  Map<String, dynamic> toJson() => _$DistanceModelToJson(this);
}
