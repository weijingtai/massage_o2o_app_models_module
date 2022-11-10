import 'package:json_annotation/json_annotation.dart';
import 'coordinate.dart';
part 'master_location_model.g.dart';

@JsonSerializable()
class MasterLocationModel {
  Coordinate coordinate;
  MasterLocationModel({required this.coordinate});

  factory MasterLocationModel.fromJson(Map<String, dynamic> json) =>
      _$MasterLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$MasterLocationModelToJson(this);
}
