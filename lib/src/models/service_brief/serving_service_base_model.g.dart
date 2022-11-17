// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serving_service_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServingServiceBaseModel _$ServingServiceBaseModelFromJson(Map json) =>
    ServingServiceBaseModel(
      json['storeUid'] as String,
      json['orderUid'] as String,
      json['serviceUid'] as String,
      DateTime.parse(json['startAt'] as String),
      json['endAt'] == null ? null : DateTime.parse(json['endAt'] as String),
      json['serviceDurationMinutes'] as int,
      DateTime.parse(json['createdAt'] as String),
      isCanceled: json['isCanceled'] as bool? ?? false,
      completedSeconds: json['completedSeconds'] as int? ?? 0,
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
    );

Map<String, dynamic> _$ServingServiceBaseModelToJson(
    ServingServiceBaseModel instance) {
  final val = <String, dynamic>{
    'startAt': instance.startAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endAt', instance.endAt?.toIso8601String());
  val['isCanceled'] = instance.isCanceled;
  val['storeUid'] = instance.storeUid;
  val['orderUid'] = instance.orderUid;
  val['serviceUid'] = instance.serviceUid;
  val['serviceDurationMinutes'] = instance.serviceDurationMinutes;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  val['completedSeconds'] = instance.completedSeconds;
  return val;
}
