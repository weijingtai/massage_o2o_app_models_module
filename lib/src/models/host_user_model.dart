import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/src/models/location/location.dart';

import '../enums/enums.dart';
import 'user_model.dart';
part 'host_user_model.g.dart';

@JsonSerializable()
class HostUserModel extends UserModel {
  @override
  @JsonKey(ignore: true)
  UserRoleEnum role = UserRoleEnum.HOST;
  String orderPrefix;
  Location location;
  HostUserModel(
      {required String uid,
      required String displayName,
      required String photoURL,
      required String alphabetName,
      required String phoneNumber,
      required String username,
      required this.location,
      required this.orderPrefix})
      : super(uid, UserRoleEnum.HOST, displayName, photoURL, alphabetName,
            phoneNumber, username);
  factory HostUserModel.fromJson(Map<String, dynamic> json) =>
      _$HostUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$HostUserModelToJson(this);
}
