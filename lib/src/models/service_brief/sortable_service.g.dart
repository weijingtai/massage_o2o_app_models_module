// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortable_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortableService _$SortableServiceFromJson(Map json) => SortableService(
      DateTime.parse(json['startAt'] as String),
      json['endAt'] == null ? null : DateTime.parse(json['endAt'] as String),
      isCanceled: json['isCanceled'] as bool? ?? false,
      addSubMintes: (json['addSubMintes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    )..previousStartAt = json['previousStartAt'] == null
        ? null
        : DateTime.parse(json['previousStartAt'] as String);

Map<String, dynamic> _$SortableServiceToJson(SortableService instance) {
  final val = <String, dynamic>{
    'startAt': instance.startAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endAt', instance.endAt?.toIso8601String());
  writeNotNull('addSubMintes', instance.addSubMintes);
  writeNotNull('previousStartAt', instance.previousStartAt?.toIso8601String());
  val['isCanceled'] = instance.isCanceled;
  return val;
}
