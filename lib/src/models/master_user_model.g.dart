// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterUserModel _$MasterUserModelFromJson(Map json) => MasterUserModel(
      json['uid'] as String,
      json['displayName'] as String,
      json['alphabetName'] as String,
      json['photoURL'] as String,
      json['phoneNumber'] as String,
      json['username'] as String,
      json['gender'] as String,
    );

Map<String, dynamic> _$MasterUserModelToJson(MasterUserModel instance) {
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
  val['alphabetName'] = instance.alphabetName;
  val['phoneNumber'] = instance.phoneNumber;
  val['username'] = instance.username;
  val['gender'] = instance.gender;
  return val;
}
