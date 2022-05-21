import 'package:json_annotation/json_annotation.dart';

import '../enums/enums.dart';
import 'user_model.dart';
part 'host_user_model.g.dart';
@JsonSerializable()
class HostUserModel extends UserModel{
  @override
  @JsonKey(ignore: true)
  UserRoleEnum role = UserRoleEnum.HOST;
  String orderPrefix;
  HostUserModel(
      String uid,
      String displayName,
      String photoURL,
      String alphabetName,
      String phoneNumber,
      String username,
      this.orderPrefix)
      :super(uid, UserRoleEnum.HOST, displayName, photoURL, alphabetName, phoneNumber, username);
  factory HostUserModel.fromJson(Map<String, dynamic> json) => _$HostUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$HostUserModelToJson(this);
}