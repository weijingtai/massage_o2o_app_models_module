
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_user_info.g.dart';

@JsonSerializable()
class BaseUserInfo extends Equatable{
  String uid;
  String displayName;
  String? photoURL;
  BaseUserInfo(this.uid,this.displayName,{this.photoURL});

  @override
  // TODO: implement props
  List<Object?> get props => [uid];
  factory BaseUserInfo.fromJson(Map<String, dynamic> json) => _$BaseUserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$BaseUserInfoToJson(this);
}