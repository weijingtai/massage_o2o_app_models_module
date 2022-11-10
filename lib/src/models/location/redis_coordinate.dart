import 'package:json_annotation/json_annotation.dart';

import 'coordinate.dart';

part 'redis_coordinate.g.dart';

@JsonSerializable()
class RedisCoordinate extends Coordinate {
  String coordinateType = "redis";
  String geohash;
  RedisCoordinate(
      {required double latitude,
      required double longitude,
      required this.geohash})
      : super(latitude: latitude, longitude: longitude);

  factory RedisCoordinate.fromJson(Map<String, dynamic> json) =>
      _$RedisCoordinateFromJson(json);
  Map<String, dynamic> toJson() => _$RedisCoordinateToJson(this);
}