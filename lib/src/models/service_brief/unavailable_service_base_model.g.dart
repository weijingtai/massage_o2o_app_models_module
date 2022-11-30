// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unavailable_service_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnavailableServiceBaseModel _$UnavailableServiceBaseModelFromJson(Map json) =>
    UnavailableServiceBaseModel(
      const DatetimeUTCISOJsonToLocalConvetor()
          .fromJson(json['startAt'] as String),
      json['unavailableDurationMinutes'] as int,
      guid: json['guid'] as String,
      createdAt: const DatetimeUTCISOJsonToLocalConvetor()
          .fromJson(json['createdAt'] as String),
      lastModifiedAt: _$JsonConverterFromJson<String, DateTime>(
          json['lastModifiedAt'],
          const DatetimeUTCISOJsonToLocalConvetor().fromJson),
      canceledAt: _$JsonConverterFromJson<String, DateTime>(json['canceledAt'],
          const DatetimeUTCISOJsonToLocalConvetor().fromJson),
      addSubMinutes: (json['addSubMinutes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      previousStartAt: _$JsonConverterFromJson<String, DateTime>(
          json['previousStartAt'],
          const DatetimeUTCISOJsonToLocalConvetor().fromJson),
    )
      ..type = $enumDecode(_$ServiceBriefEnumEnumMap, json['type'])
      ..endAt = _$JsonConverterFromJson<String, DateTime>(
          json['endAt'], const DatetimeUTCISOJsonToLocalConvetor().fromJson);

Map<String, dynamic> _$UnavailableServiceBaseModelToJson(
    UnavailableServiceBaseModel instance) {
  final val = <String, dynamic>{
    'type': _$ServiceBriefEnumEnumMap[instance.type]!,
    'guid': instance.guid,
    'startAt':
        const DatetimeUTCISOJsonToLocalConvetor().toJson(instance.startAt),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'endAt',
      _$JsonConverterToJson<String, DateTime>(
          instance.endAt, const DatetimeUTCISOJsonToLocalConvetor().toJson));
  writeNotNull('addSubMinutes', instance.addSubMinutes);
  writeNotNull(
      'previousStartAt',
      _$JsonConverterToJson<String, DateTime>(instance.previousStartAt,
          const DatetimeUTCISOJsonToLocalConvetor().toJson));
  writeNotNull(
      'canceledAt',
      _$JsonConverterToJson<String, DateTime>(instance.canceledAt,
          const DatetimeUTCISOJsonToLocalConvetor().toJson));
  writeNotNull(
      'lastModifiedAt',
      _$JsonConverterToJson<String, DateTime>(instance.lastModifiedAt,
          const DatetimeUTCISOJsonToLocalConvetor().toJson));
  val['createdAt'] =
      const DatetimeUTCISOJsonToLocalConvetor().toJson(instance.createdAt);
  val['unavailableDurationMinutes'] = instance.unavailableDurationMinutes;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ServiceBriefEnumEnumMap = {
  ServiceBriefEnum.Serving: 'Serving',
  ServiceBriefEnum.Unavailable: 'Unavailable',
  ServiceBriefEnum.Appointment: 'Appointment',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
