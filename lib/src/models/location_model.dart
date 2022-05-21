

import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'coordinate.dart';
part 'location_model.g.dart';

@JsonSerializable()
class LocationModel{
  Coordinate coordinate;
  Address? address;
  LocationModel(this.coordinate,{this.address});

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
