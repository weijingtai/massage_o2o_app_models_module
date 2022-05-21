import 'package:json_annotation/json_annotation.dart';
import '../enums/enums.dart';
import 'user_model.dart';
part 'master_user_model.g.dart';
@JsonSerializable()
class MasterUserModel extends UserModel{
  // int age;
  String gender;
  @override
  @JsonKey(ignore: true)
  UserRoleEnum role = UserRoleEnum.MASTER;
  MasterUserModel(
      String uid,
      String displayName,
      String alphabetName,
      String photoURL,
      String phoneNumber,
      String username,
      this.gender)
      :super(uid, UserRoleEnum.MASTER, displayName, photoURL, alphabetName, phoneNumber, username);
  factory MasterUserModel.fromJson(Map<String, dynamic> json) => _$MasterUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$MasterUserModelToJson(this);
}