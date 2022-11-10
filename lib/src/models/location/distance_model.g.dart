// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistanceModel _$DistanceModelFromJson(Map json) => DistanceModel(
      Coordinate.fromJson(Map<String, dynamic>.from(json['coordinate'] as Map)),
      rangeDistance: (json['rangeDistance'] as num?)?.toDouble(),
      rangeDistanceUnit: json['rangeDistanceUnit'] as String?,
      travelDistance: (json['travelDistance'] as num?)?.toDouble(),
      travelDistanceUnit: json['travelDistanceUnit'] as String?,
      elapsedTime: (json['elapsedTime'] as num?)?.toDouble(),
      elapsedTimeUnit: json['elapsedTimeUnit'] as String?,
      calculateAt: json['calculateAt'] == null
          ? null
          : DateTime.parse(json['calculateAt'] as String),
    );

Map<String, dynamic> _$DistanceModelToJson(DistanceModel instance) {
  final val = <String, dynamic>{
    'coordinate': instance.coordinate.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rangeDistance', instance.rangeDistance);
  writeNotNull('rangeDistanceUnit', instance.rangeDistanceUnit);
  writeNotNull('travelDistance', instance.travelDistance);
  writeNotNull('travelDistanceUnit', instance.travelDistanceUnit);
  writeNotNull('elapsedTime', instance.elapsedTime);
  writeNotNull('elapsedTimeUnit', instance.elapsedTimeUnit);
  writeNotNull('calculateAt', instance.calculateAt?.toIso8601String());
  return val;
}
