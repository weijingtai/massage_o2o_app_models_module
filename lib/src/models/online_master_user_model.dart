
import 'package:json_annotation/json_annotation.dart';
import '../enums/enums.dart';
import 'serving_service_base_model.dart';
import 'appointment_service_base_model.dart';
import 'leave_service_base_model.dart';
import 'master_user_model.dart';
part 'online_master_user_model.g.dart';

@JsonSerializable()
class OnlineMasterUserModel{

  late UserOnlineStatusEnum onlineStatus;
  late MasterUserModel baseInfo;
  late DateTime lastLoginAt;

  MasterServiceStatusEnum? masterServiceStatus;
  DateTime? lastModifiedAt;
  ServingServiceBaseModel? servingService;
  List<AppointmentServiceBaseModel>? appointments;
  List<LeaveServiceBaseModel>? leavingList;

  OnlineMasterUserModel(
      this.baseInfo,
      this.lastLoginAt,
      this.onlineStatus, {
        this.lastModifiedAt,
        this.masterServiceStatus,
        this.appointments,
        this.servingService,
        this.leavingList});


  factory OnlineMasterUserModel.fromJson(Map<String, dynamic> json) => _$OnlineMasterUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$OnlineMasterUserModelToJson(this);

  String get uid{
    return baseInfo.uid;
  }

  bool get isEmptyLeavingList{
    if (leavingList == null){
      return true;
    }
    return leavingList!.isEmpty;
  }
  bool get isNotEmptyLeavingList{
    return !isEmptyLeavingList;
  }

  bool get isEmptyAppointments {
    if (appointments == null){
      return true;
    }
    return appointments!.isEmpty;
  }
  bool get isNotEmptyAppointments {
    return !isEmptyAppointments;
  }



  static const _$MasterServiceStatusEnumMap = <MasterServiceStatusEnum, String>{
    MasterServiceStatusEnum.IDLE: "IDLE",
    MasterServiceStatusEnum.ASSIGNING: "ASSIGNING",
    MasterServiceStatusEnum.SERVING:"SERVING",
    MasterServiceStatusEnum.ON_THE_WAY:"ON_THE_WAY"
  };
  static const _$UserOnlineStatusEnumMap = <UserOnlineStatusEnum, String>{
    UserOnlineStatusEnum.ONLINE: "ONLINE",
    UserOnlineStatusEnum.OFFLINE: "OFFLINE",
    UserOnlineStatusEnum.LEAVING: "LEAVING",
    UserOnlineStatusEnum.LOGGED_OUT: "LOGGED_OUT",
  };

}