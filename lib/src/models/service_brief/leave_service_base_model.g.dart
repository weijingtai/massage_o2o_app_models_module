// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_service_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveServiceBaseModel _$LeaveServiceBaseModelFromJson(Map json) =>
    LeaveServiceBaseModel(
      DateTime.parse(json['startAt'] as String),
      json['leaveDurationMinutes'] as int,
      DateTime.parse(json['createdAt'] as String),
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
      isCanceled: json['isCanceled'] as bool? ?? false,
    )..endAt = DateTime.parse(json['endAt'] as String);

Map<String, dynamic> _$LeaveServiceBaseModelToJson(
    LeaveServiceBaseModel instance) {
  final val = <String, dynamic>{
    'startAt': instance.startAt.toIso8601String(),
    'endAt': instance.endAt.toIso8601String(),
    'isCanceled': instance.isCanceled,
    'leaveDurationMinutes': instance.leaveDurationMinutes,
    'createdAt': instance.createdAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('modifiedAt', instance.modifiedAt?.toIso8601String());
  return val;
}
