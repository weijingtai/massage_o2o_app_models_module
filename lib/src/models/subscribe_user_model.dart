
import 'package:json_annotation/json_annotation.dart';
import '../enums/enums.dart';

import 'base_user_info.dart';
part 'subscribe_user_model.g.dart';



@JsonSerializable()
class SubscribeUserModel extends BaseUserInfo{
  // String uid;
  // String displayName;
  String alphabetName;
  String? remarkName;
  String? remarkAlphabetName;
  bool isMarked = false;
  
  @JsonKey(ignore: true,nullable: true,required: false)
  SubscribeStateEnum subscribeStateEnum = SubscribeStateEnum.NONE;

  SubscribeUserModel(
      String uid,
      String displayName,
      this.alphabetName,
      {this.remarkName,
        this.remarkAlphabetName,
        this.isMarked = false}):super(uid,displayName);
  String get displayNameForUI{
    if (remarkName != null && remarkName!.isNotEmpty){
      return remarkName!;
    }
    return displayName;
  }
  factory SubscribeUserModel.fromJson(Map<String, dynamic> json) => _$SubscribeUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubscribeUserModelToJson(this);

}