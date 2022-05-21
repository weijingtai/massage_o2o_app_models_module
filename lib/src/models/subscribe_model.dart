

import 'package:json_annotation/json_annotation.dart';
import 'subscribe_user_model.dart';
part 'subscribe_model.g.dart';

@JsonSerializable()
class SubscribeModel{

  DateTime subscribedAt;
  SubscribeUserModel subscribeUserModel;
  SubscribeModel(this.subscribeUserModel,this.subscribedAt);

  factory SubscribeModel.fromJson(Map<String, dynamic> json) => _$SubscribeModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubscribeModelToJson(this);
}

