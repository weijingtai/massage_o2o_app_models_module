import 'package:json_annotation/json_annotation.dart';

import 'coordinate.dart';

part 'redis_coordinate.g.dart';

@JsonSerializable()
class RedisCoordinate extends Coordinate {
  String coordinateType = "redis";
  int geohash;
  double rangeDistance;
  String rangeDistanceUnit;
  RedisCoordinate(
      {required double latitude,
      required double longitude,
      required this.rangeDistanceUnit,
      required this.rangeDistance,
      required this.geohash})
      : super(latitude: latitude, longitude: longitude);

  factory RedisCoordinate.fromJson(Map<String, dynamic> json) =>
      _$RedisCoordinateFromJson(json);
  Map<String, dynamic> toJson() => _$RedisCoordinateToJson(this);
}
