// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redis_coordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedisCoordinate _$RedisCoordinateFromJson(Map json) => RedisCoordinate(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      geohash: json['geohash'] as int,
    )..coordinateType = json['coordinateType'] as String;

Map<String, dynamic> _$RedisCoordinateToJson(RedisCoordinate instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'coordinateType': instance.coordinateType,
      'geohash': instance.geohash,
    };
