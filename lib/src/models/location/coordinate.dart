import 'package:json_annotation/json_annotation.dart';
part 'coordinate.g.dart';

@JsonSerializable()
class Coordinate {
  @JsonKey(name: 'lat')
  double latitude;
  @JsonKey(name: 'lng')
  double longitude;
  Coordinate({required this.latitude, required this.longitude});

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
  Map<String, dynamic> toJson() => _$CoordinateToJson(this);
}
