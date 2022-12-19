// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redis_coordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedisCoordinate _$RedisCoordinateFromJson(Map json) => RedisCoordinate(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lng'] as num).toDouble(),
      rangeDistanceUnit: json['rangeDistanceUnit'] as String,
      rangeDistance: (json['rangeDistance'] as num).toDouble(),
      geohash: json['geohash'] as int,
    )..coordinateType = json['coordinateType'] as String;

Map<String, dynamic> _$RedisCoordinateToJson(RedisCoordinate instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lng': instance.longitude,
      'coordinateType': instance.coordinateType,
      'geohash': instance.geohash,
      'rangeDistance': instance.rangeDistance,
      'rangeDistanceUnit': instance.rangeDistanceUnit,
    };
