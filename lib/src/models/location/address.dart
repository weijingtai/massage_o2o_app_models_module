

import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address{
  late String city;
  late String state;
  late String street;
  late int zip;
  Address({required this.street, required this.city, required this.state,required this.zip});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
