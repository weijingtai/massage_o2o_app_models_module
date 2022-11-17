// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_service_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentServiceBaseModel _$AppointmentServiceBaseModelFromJson(Map json) =>
    AppointmentServiceBaseModel(
      json['storeUid'] as String,
      json['orderUid'] as String,
      json['serviceUid'] as String,
      DateTime.parse(json['orderedStartAt'] as String),
      json['serviceDurationMinutes'] as int,
      DateTime.parse(json['createdAt'] as String),
      isCanceled: json['isCanceled'] as bool? ?? false,
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
    )
      ..startAt = DateTime.parse(json['startAt'] as String)
      ..endAt = json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String);

Map<String, dynamic> _$AppointmentServiceBaseModelToJson(
    AppointmentServiceBaseModel instance) {
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
  val['orderedStartAt'] = instance.orderedStartAt.toIso8601String();
  val['serviceDurationMinutes'] = instance.serviceDurationMinutes;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  return val;
}
