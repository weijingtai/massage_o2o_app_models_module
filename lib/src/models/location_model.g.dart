// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map json) => LocationModel(
      Coordinate.fromJson(Map<String, dynamic>.from(json['coordinate'] as Map)),
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) {
  final val = <String, dynamic>{
    'coordinate': instance.coordinate.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  return val;
}
