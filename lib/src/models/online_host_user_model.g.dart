// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_host_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineHostUserModel _$OnlineHostUserModelFromJson(Map json) =>
    OnlineHostUserModel(
      HostUserModel.fromJson(
          Map<String, dynamic>.from(json['baseInfo'] as Map)),
      DateTime.parse(json['lastLoginAt'] as String),
      lastModifiedAt: json['lastModifiedAt'] == null
          ? null
          : DateTime.parse(json['lastModifiedAt'] as String),
    );

Map<String, dynamic> _$OnlineHostUserModelToJson(OnlineHostUserModel instance) {
  final val = <String, dynamic>{
    'baseInfo': instance.baseInfo.toJson(),
    'lastLoginAt': instance.lastLoginAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lastModifiedAt', instance.lastModifiedAt?.toIso8601String());
  return val;
}
