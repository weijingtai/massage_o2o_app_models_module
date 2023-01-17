import 'package:json_annotation/json_annotation.dart';

import 'coordinate.dart';
import 'address.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Address address;
  Coordinate coordinate;
  Location({required this.address, required this.coordinate});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
