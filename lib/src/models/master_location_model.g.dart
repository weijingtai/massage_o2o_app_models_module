// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterLocationModel _$MasterLocationModelFromJson(Map json) =>
    MasterLocationModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$MasterLocationModelToJson(
        MasterLocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
