// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HostLocationModel _$HostLocationModelFromJson(Map json) => HostLocationModel(
      coordinate: Coordinate.fromJson(
          Map<String, dynamic>.from(json['coordinate'] as Map)),
      address:
          Address.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
    );

Map<String, dynamic> _$HostLocationModelToJson(HostLocationModel instance) =>
    <String, dynamic>{
      'coordinate': instance.coordinate.toJson(),
      'address': instance.address.toJson(),
    };
