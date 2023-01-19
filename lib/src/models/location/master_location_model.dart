import 'package:json_annotation/json_annotation.dart';
import 'coordinate.dart';
import 'user_location_model.dart';
part 'master_location_model.g.dart';

@JsonSerializable()
class MasterLocationModel extends UserLocationModel {
  MasterLocationModel({required String uid, required Coordinate coordinate})
      : super(uid: uid, coordinate: coordinate);

  factory MasterLocationModel.fromJson(Map<String, dynamic> json) =>
      _$MasterLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$MasterLocationModelToJson(this);
}
