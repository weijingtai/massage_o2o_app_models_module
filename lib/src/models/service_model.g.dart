// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map json) => ServiceModel(
      guid: json['guid'] as String,
      hostUid: json['hostUid'] as String,
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
      pausedAt: json['pausedAt'] == null
          ? null
          : DateTime.parse(json['pausedAt'] as String),
      assertCompletedAt: json['assertCompletedAt'] == null
          ? null
          : DateTime.parse(json['assertCompletedAt'] as String),
      doneAt: json['doneAt'] == null
          ? null
          : DateTime.parse(json['doneAt'] as String),
      acceptedAt: json['acceptedAt'] == null
          ? null
          : DateTime.parse(json['acceptedAt'] as String),
      appointmentStartAt: json['appointmentStartAt'] == null
          ? null
          : DateTime.parse(json['appointmentStartAt'] as String),
      canceledAt: json['canceledAt'] == null
          ? null
          : DateTime.parse(json['canceledAt'] as String),
    );

Map<String, dynamic> _$ServiceModelToJson(ServiceModel instance) {
  final val = <String, dynamic>{
    'guid': instance.guid,
    'orderGuid': instance.orderGuid,
    'hostUid': instance.hostUid,
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
  writeNotNull(
      'appointmentStartAt', instance.appointmentStartAt?.toIso8601String());
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  writeNotNull('lastModifiedByUid', instance.lastModifiedByUid);
  writeNotNull('deletedAt', instance.deletedAt?.toIso8601String());
  writeNotNull('canceledAt', instance.canceledAt?.toIso8601String());
  writeNotNull('assignGuid', instance.assignGuid);
  writeNotNull('startedAt', instance.startedAt?.toIso8601String());
  writeNotNull('pausedAt', instance.pausedAt?.toIso8601String());
  writeNotNull(
      'assertCompletedAt', instance.assertCompletedAt?.toIso8601String());
  writeNotNull('acceptedAt', instance.acceptedAt?.toIso8601String());
  writeNotNull('doneAt', instance.doneAt?.toIso8601String());
  val['state'] = _$ServiceStateEnumEnumMap[instance.state]!;
  return val;
}

const _$ServiceStateEnumEnumMap = {
  ServiceStateEnum.NoMasterSelected: 'NoMasterSelected',
  ServiceStateEnum.Preparing: 'Preparing',
  ServiceStateEnum.Assigning: 'Assigning',
  ServiceStateEnum.Waiting: 'Waiting',
  ServiceStateEnum.MasterSetSail: 'MasterSetSail',
  ServiceStateEnum.CustomerArrived: 'CustomerArrived',
  ServiceStateEnum.Running: 'Running',
  ServiceStateEnum.Serving: 'Serving',
  ServiceStateEnum.Paused: 'Paused',
  ServiceStateEnum.Finished: 'Finished',
  ServiceStateEnum.Completed: 'Completed',
  ServiceStateEnum.Canceled: 'Canceled',
  ServiceStateEnum.Replaced: 'Replaced',
  ServiceStateEnum.Deleted: 'Deleted',
};
