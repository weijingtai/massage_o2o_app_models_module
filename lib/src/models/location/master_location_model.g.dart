// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterLocationModel _$MasterLocationModelFromJson(Map json) =>
    MasterLocationModel(
      uid: json['uid'] as String,
      coordinate: Coordinate.fromJson(
          Map<String, dynamic>.from(json['coordinate'] as Map)),
    );

Map<String, dynamic> _$MasterLocationModelToJson(
        MasterLocationModel instance) =>
    <String, dynamic>{
      'coordinate': instance.coordinate.toJson(),
      'uid': instance.uid,
    };
