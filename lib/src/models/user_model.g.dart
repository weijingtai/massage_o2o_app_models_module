// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map json) => UserModel(
      json['uid'] as String,
      $enumDecode(_$UserRoleEnumEnumMap, json['role']),
      json['displayName'] as String,
      json['photoURL'] as String,
      json['alphabetName'] as String,
      json['phoneNumber'] as String,
      json['username'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) {
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
  val['role'] = _$UserRoleEnumEnumMap[instance.role];
  val['alphabetName'] = instance.alphabetName;
  val['phoneNumber'] = instance.phoneNumber;
  val['username'] = instance.username;
  return val;
}

const _$UserRoleEnumEnumMap = {
  UserRoleEnum.MASTER: 'MASTER',
  UserRoleEnum.HOST: 'HOST',
};
