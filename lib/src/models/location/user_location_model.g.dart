// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocationModel _$UserLocationModelFromJson(Map json) => UserLocationModel(
      uid: json['uid'] as String,
      coordinate: Coordinate.fromJson(
          Map<String, dynamic>.from(json['coordinate'] as Map)),
    );

Map<String, dynamic> _$UserLocationModelToJson(UserLocationModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'coordinate': instance.coordinate.toJson(),
    };
