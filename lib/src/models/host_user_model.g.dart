// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HostUserModel _$HostUserModelFromJson(Map json) => HostUserModel(
      uid: json['uid'] as String,
      displayName: json['displayName'] as String,
      photoURL: json['photoURL'] as String,
      alphabetName: json['alphabetName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      username: json['username'] as String,
      location:
          Location.fromJson(Map<String, dynamic>.from(json['location'] as Map)),
      orderPrefix: json['orderPrefix'] as String,
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
  val['location'] = instance.location.toJson();
  return val;
}
