// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseUserInfo _$BaseUserInfoFromJson(Map json) => BaseUserInfo(
      json['uid'] as String,
      json['displayName'] as String,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$BaseUserInfoToJson(BaseUserInfo instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'displayName': instance.displayName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photoURL', instance.photoURL);
  return val;
}
