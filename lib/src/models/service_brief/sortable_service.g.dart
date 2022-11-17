// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortable_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortableService _$SortableServiceFromJson(Map json) => SortableService(
      DateTime.parse(json['startAt'] as String),
      DateTime.parse(json['endAt'] as String),
      isCanceled: json['isCanceled'] as bool? ?? false,
    );

Map<String, dynamic> _$SortableServiceToJson(SortableService instance) =>
    <String, dynamic>{
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt.toIso8601String(),
      'isCanceled': instance.isCanceled,
    };
