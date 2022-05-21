// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeModel _$SubscribeModelFromJson(Map json) => SubscribeModel(
      SubscribeUserModel.fromJson(
          Map<String, dynamic>.from(json['subscribeUserModel'] as Map)),
      DateTime.parse(json['subscribedAt'] as String),
    );

Map<String, dynamic> _$SubscribeModelToJson(SubscribeModel instance) =>
    <String, dynamic>{
      'subscribedAt': instance.subscribedAt.toIso8601String(),
      'subscribeUserModel': instance.subscribeUserModel.toJson(),
    };
