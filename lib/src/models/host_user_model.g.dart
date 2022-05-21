// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HostUserModel _$HostUserModelFromJson(Map json) => HostUserModel(
      json['uid'] as String,
      json['displayName'] as String,
      json['photoURL'] as String,
      json['alphabetName'] as String,
      json['phoneNumber'] as String,
      json['username'] as String,
      json['orderPrefix'] as String,
    );

Map<String, dynamic> _$HostUserModelToJson(HostUserModel instance) {
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
  val['orderPrefix'] = instance.orderPrefix;
  return val;
}
