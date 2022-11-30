// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_service_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentServiceBaseModel _$AppointmentServiceBaseModelFromJson(Map json) =>
    AppointmentServiceBaseModel(
      storeUid: json['storeUid'] as String,
      orderUid: json['orderUid'] as String,
      serviceUid: json['serviceUid'] as String,
      orderedStartAt: DateTime.parse(json['orderedStartAt'] as String),
      serviceDurationMinutes: json['serviceDurationMinutes'] as int,
      guid: json['guid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      canceledAt: json['canceledAt'] == null
          ? null
          : DateTime.parse(json['canceledAt'] as String),
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
      addSubMinutes: (json['addSubMinutes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      previousStartAt: json['previousStartAt'] == null
          ? null
          : DateTime.parse(json['previousStartAt'] as String),
    )
      ..type = $enumDecode(_$ServiceBriefEnumEnumMap, json['type'])
      ..startAt = DateTime.parse(json['startAt'] as String)
      ..endAt = json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String);

Map<String, dynamic> _$AppointmentServiceBaseModelToJson(
    AppointmentServiceBaseModel instance) {
  final val = <String, dynamic>{
    'type': _$ServiceBriefEnumEnumMap[instance.type]!,
    'guid': instance.guid,
    'startAt': instance.startAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endAt', instance.endAt?.toIso8601String());
  writeNotNull('addSubMinutes', instance.addSubMinutes);
  writeNotNull('previousStartAt', instance.previousStartAt?.toIso8601String());
  writeNotNull('canceledAt', instance.canceledAt?.toIso8601String());
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  val['createdAt'] = instance.createdAt.toIso8601String();
  val['storeUid'] = instance.storeUid;
  val['orderUid'] = instance.orderUid;
  val['serviceUid'] = instance.serviceUid;
  val['orderedStartAt'] = instance.orderedStartAt.toIso8601String();
  val['serviceDurationMinutes'] = instance.serviceDurationMinutes;
  return val;
}

const _$ServiceBriefEnumEnumMap = {
  ServiceBriefEnum.Serving: 'Serving',
  ServiceBriefEnum.Unavailable: 'Unavailable',
  ServiceBriefEnum.Appointment: 'Appointment',
};
