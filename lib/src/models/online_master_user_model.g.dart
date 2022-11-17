// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_master_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineMasterUserModel _$OnlineMasterUserModelFromJson(Map json) =>
    OnlineMasterUserModel(
      MasterUserModel.fromJson(
          Map<String, dynamic>.from(json['baseInfo'] as Map)),
      DateTime.parse(json['lastLoginAt'] as String),
      $enumDecode(_$UserOnlineStatusEnumEnumMap, json['onlineStatus']),
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
      location: json['location'] == null
          ? null
          : Coordinate.fromJson(
              Map<String, dynamic>.from(json['location'] as Map)),
      masterServiceStatus: $enumDecodeNullable(
          _$MasterServiceStatusEnumEnumMap, json['masterServiceStatus']),
      appointments: json['appointments'] == null
          ? null
          : (json['appointments'] as List<Map<String, dynamic>>)
              .map((e) => AppointmentServiceBaseModel.fromJson(e))
              .toList(),
      servingService: json['servingService'],
      leavingList: json['leavingList'] == null
          ? null
          : (json['leavingList'] as List<Map<String, dynamic>>)
              .map((e) => LeaveServiceBaseModel.fromJson(e))
              .toList(),
    );

Map<String, dynamic> _$OnlineMasterUserModelToJson(
    OnlineMasterUserModel instance) {
  final val = <String, dynamic>{
    'onlineStatus': _$UserOnlineStatusEnumEnumMap[instance.onlineStatus]!,
    'baseInfo': instance.baseInfo.toJson(),
    'lastLoginAt': instance.lastLoginAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('masterServiceStatus',
      _$MasterServiceStatusEnumEnumMap[instance.masterServiceStatus]);
  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('servingService', instance.servingService);
  writeNotNull('appointments', instance.appointments);
  writeNotNull('leavingList', instance.leavingList);
  return val;
}

const _$UserOnlineStatusEnumEnumMap = {
  UserOnlineStatusEnum.ONLINE: 'ONLINE',
  UserOnlineStatusEnum.OFFLINE: 'OFFLINE',
  UserOnlineStatusEnum.LEAVING: 'LEAVING',
  UserOnlineStatusEnum.LOGGED_OUT: 'LOGGED_OUT',
};

const _$MasterServiceStatusEnumEnumMap = {
  MasterServiceStatusEnum.IDLE: 'IDEL',
  MasterServiceStatusEnum.ASSIGNING: 'ASSIGNING',
  MasterServiceStatusEnum.SERVING: 'SERVING',
  MasterServiceStatusEnum.ON_THE_WAY: 'ON_THE_WAY',
};
