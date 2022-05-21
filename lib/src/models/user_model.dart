
import 'package:json_annotation/json_annotation.dart';
import '../enums/enums.dart';
import 'base_user_info.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends BaseUserInfo{

  // String uid;
  UserRoleEnum role;
  // String displayName;
  // String photoURL;
  String alphabetName;
  String phoneNumber;
  String username;
  UserModel(
      String uid,
      this.role,
      String displayName,
      String photoURL,
      this.alphabetName,
      this.phoneNumber,
      this.username):super(uid,displayName,photoURL:photoURL);
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
  static const _$UserRoleEnumMap = <UserRoleEnum, String>{
    UserRoleEnum.MASTER: 'MASTER',
    UserRoleEnum.HOST: 'HOST',
  };
}