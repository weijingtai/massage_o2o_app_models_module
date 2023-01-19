import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'coordinate.dart';

part 'user_location_model.g.dart';

@JsonSerializable()
class UserLocationModel extends Equatable {
  String uid;
  Coordinate coordinate;
  UserLocationModel({required this.uid, required this.coordinate});

  @override
  List<Object?> get props => [uid, coordinate];
  factory UserLocationModel.fromJson(Map<String, dynamic> json) =>
      _$UserLocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserLocationModelToJson(this);
}
