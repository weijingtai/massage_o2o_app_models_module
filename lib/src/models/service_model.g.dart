// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map json) => ServiceModel(
      guid: json['guid'] as String,
      orderGuid: json['orderGuid'] as String,
      seqInOrder: json['seqInOrder'] as int,
      creatorUid: json['creatorUid'] as String,
      state: $enumDecode(_$ServiceStateEnumEnumMap, json['state']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedSeconds: json['completedSeconds'] as int? ?? 0,
      replacedByServiceGuid: json['replacedByServiceGuid'] as String?,
      assignedMasterUid: json['assignedMasterUid'] as String?,
      totalServiceMinutes: json['totalServiceMinutes'] as int?,
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
      lastModifiedByUid: json['lastModifiedByUid'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      assignGuid: json['assignGuid'] as String?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      canceledAt: json['canceledAt'] == null
          ? null
          : DateTime.parse(json['canceledAt'] as String),
      replacedAt: json['replacedAt'] == null
          ? null
          : DateTime.parse(json['replacedAt'] as String),
      acceptedAt: json['acceptedAt'] == null
          ? null
          : DateTime.parse(json['acceptedAt'] as String),
      serviceDurationUpdateList:
          (json['serviceDurationUpdateList'] as List<dynamic>?)
                  ?.map((e) => ServiceDurationOperationUnit.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList() ??
              const [],
    );

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

  writeNotNull('replacedByServiceGuid', instance.replacedByServiceGuid);
  writeNotNull('assignedMasterUid', instance.assignedMasterUid);
  writeNotNull('totalServiceMinutes', instance.totalServiceMinutes);
  val['completedSeconds'] = instance.completedSeconds;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  writeNotNull('lastModifiedByUid', instance.lastModifiedByUid);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('assignGuid', instance.assignGuid);
  writeNotNull('startedAt', instance.startedAt?.toIso8601String());
  writeNotNull('completedAt', instance.completedAt?.toIso8601String());
  writeNotNull('finishedAt', instance.finishedAt?.toIso8601String());
  writeNotNull('canceledAt', instance.canceledAt?.toIso8601String());
  writeNotNull('replacedAt', instance.replacedAt?.toIso8601String());
  writeNotNull('acceptedAt', instance.acceptedAt?.toIso8601String());
  val['state'] = _$ServiceStateEnumEnumMap[instance.state];
  val['serviceDurationUpdateList'] =
      instance.serviceDurationUpdateList.map((e) => e.toJson()).toList();
  return val;
}

const _$ServiceStateEnumEnumMap = {
  ServiceStateEnum.NoMasterSelected: 'NoMasterSelected',
  ServiceStateEnum.Preparing: 'Preparing',
  ServiceStateEnum.Assigning: 'Assigning',
  ServiceStateEnum.Waiting: 'Waiting',
  ServiceStateEnum.CustomerArrived: 'CustomerArrived',
  ServiceStateEnum.Running: 'Running',
  ServiceStateEnum.Serving: 'Serving',
  ServiceStateEnum.Paused: 'Paused',
  ServiceStateEnum.Finished: 'Finished',
  ServiceStateEnum.Completed: 'Completed',
  ServiceStateEnum.Canceled: 'canceled',
  ServiceStateEnum.Replaced: 'Replaced',
};
