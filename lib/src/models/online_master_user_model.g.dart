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
      masterServiceStatus: $enumDecodeNullable(
          _$MasterServiceStatusEnumEnumMap, json['masterServiceStatus']),
      appointments: (json['appointments'] as List<dynamic>?)
          ?.map((e) => AppointmentServiceBaseModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      servingService: json['servingService'] == null
          ? null
          : ServingServiceBaseModel.fromJson(
              Map<String, dynamic>.from(json['servingService'] as Map)),
      leavingList: (json['leavingList'] as List<dynamic>?)
          ?.map((e) => LeaveServiceBaseModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$OnlineMasterUserModelToJson(
    OnlineMasterUserModel instance) {
  final val = <String, dynamic>{
    'onlineStatus': _$UserOnlineStatusEnumEnumMap[instance.onlineStatus],
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
  writeNotNull('servingService', instance.servingService?.toJson());
  writeNotNull(
      'appointments', instance.appointments?.map((e) => e.toJson()).toList());
  writeNotNull(
      'leavingList', instance.leavingList?.map((e) => e.toJson()).toList());
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
