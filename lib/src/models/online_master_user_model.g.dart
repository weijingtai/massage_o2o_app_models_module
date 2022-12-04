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
      appointments: (json['appointments'] as List<dynamic>?)
          ?.map((e) => AppointmentServiceBaseModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      serving: json['serving'] == null
          ? null
          : ServingServiceBaseModel.fromJson(
              Map<String, dynamic>.from(json['serving'] as Map)),
      unavailables: (json['unavailables'] as List<dynamic>?)
          ?.map((e) => UnavailableServiceBaseModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
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
  writeNotNull('serving', instance.serving?.toJson());
  writeNotNull(
      'appointments', instance.appointments?.map((e) => e.toJson()).toList());
  writeNotNull(
      'unavailables', instance.unavailables?.map((e) => e.toJson()).toList());
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
