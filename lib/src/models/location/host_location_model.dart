import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'coordinate.dart';
import 'user_location_model.dart';
part 'host_location_model.g.dart';

@JsonSerializable()
class HostLocationModel extends UserLocationModel {
  Address address;
  HostLocationModel(
      {required String uid,
      required Coordinate coordinate,
      required this.address})
      : super(uid: uid, coordinate: coordinate);

  factory HostLocationModel.fromJson(Map<String, dynamic> json) =>
      _$HostLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$HostLocationModelToJson(this);
}
