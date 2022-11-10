import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'coordinate.dart';
part 'host_location_model.g.dart';

@JsonSerializable()
class HostLocationModel {
  Coordinate coordinate;
  Address address;
  HostLocationModel({required this.coordinate, required this.address});

  factory HostLocationModel.fromJson(Map<String, dynamic> json) =>
      _$HostLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$HostLocationModelToJson(this);
}
