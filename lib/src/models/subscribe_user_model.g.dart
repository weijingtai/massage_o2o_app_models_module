// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeUserModel _$SubscribeUserModelFromJson(Map json) => SubscribeUserModel(
      json['uid'] as String,
      json['displayName'] as String,
      json['alphabetName'] as String,
      remarkName: json['remarkName'] as String?,
      remarkAlphabetName: json['remarkAlphabetName'] as String?,
      isMarked: json['isMarked'] as bool? ?? false,
    )..photoURL = json['photoURL'] as String?;

Map<String, dynamic> _$SubscribeUserModelToJson(SubscribeUserModel instance) {
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
  writeNotNull('remarkName', instance.remarkName);
  writeNotNull('remarkAlphabetName', instance.remarkAlphabetName);
  val['isMarked'] = instance.isMarked;
  return val;
}
