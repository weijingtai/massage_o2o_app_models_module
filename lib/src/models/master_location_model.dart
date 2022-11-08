import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'coordinate.dart';
part 'master_location_model.g.dart';

@JsonSerializable()
class MasterLocationModel {
  double latitude;
  double longitude;
  MasterLocationModel({required this.latitude, required this.longitude});

  factory MasterLocationModel.fromJson(Map<String, dynamic> json) =>
      _$MasterLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$MasterLocationModelToJson(this);
}
