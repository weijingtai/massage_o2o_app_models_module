import 'package:json_annotation/json_annotation.dart';
import 'package:massage_o2o_app_models_module/models.dart';
import '../enums/enums.dart';
import './location/master_location_model.dart';
import 'location/coordinate.dart';
import 'master_user_model.dart';
import './service_brief/service_brief.dart';
import 'service_brief/unavailable_service_base_model.dart';
part 'online_host_user_model.g.dart';

@JsonSerializable()
class OnlineHostUserModel {
  late HostUserModel baseInfo;
  late DateTime lastLoginAt;

  DateTime? lastModifiedAt;

  OnlineHostUserModel(this.baseInfo, this.lastLoginAt, {this.lastModifiedAt});

  factory OnlineHostUserModel.fromJson(Map<String, dynamic> json) =>
      _$OnlineHostUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$OnlineHostUserModelToJson(this);

  String get uid {
    return baseInfo.uid;
  }

  String get role {
    return "HOST";
  }
}
