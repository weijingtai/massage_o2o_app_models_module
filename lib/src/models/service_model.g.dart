// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map json) => ServiceModel(
      json['guid'] as String,
      seqInOrder: json['seqInOrder'] as int,
      creatorUid: json['creatorUid'] as String,
      orderGuid: json['orderGuid'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      realStartAt: json['realStartAt'] == null
          ? null
          : DateTime.parse(json['realStartAt'] as String),
      doneAt: json['doneAt'] == null
          ? null
          : DateTime.parse(json['doneAt'] as String),
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      masterUid: json['masterUid'] as String?,
      completedSeconds: json['completedSeconds'] as int? ?? 0,
      assign: json['assign'] == null
          ? null
          : AssignModel.fromJson(
              Map<String, dynamic>.from(json['assign'] as Map)),
    )..totalServiceMinutes = json['totalServiceMinutes'] as int?;

Map<String, dynamic> _$ServiceModelToJson(ServiceModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'orderGuid': instance.orderGuid,
    'seqInOrder': instance.seqInOrder,
    'creatorUid': instance.creatorUid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('masterUid', instance.masterUid);
  writeNotNull('totalServiceMinutes', instance.totalServiceMinutes);
  val['completedSeconds'] = instance.completedSeconds;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('realStartAt', instance.realStartAt?.toIso8601String());
  writeNotNull('doneAt', instance.doneAt?.toIso8601String());
  writeNotNull('assign', instance.assign?.toJson());
  return val;
}
