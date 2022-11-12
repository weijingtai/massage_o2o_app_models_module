import 'dart:convert';

import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/models.dart';
import 'package:massage_o2o_app_models_module/src/models/assign_model.dart';
import 'package:test/test.dart';

void main() {
  test("test seri", () {
    var jsonStr =
        "{\"baseInfo\":{\"alphabetName\":\"baiyu\",\"photoURL\":\"https://192.168.0.140/headprofile/25.jpg\",\"uid\":\"9yHe2xU067A3fTOc6bfEHYcuhbQF\",\"role\":\"MASTER\",\"phoneNumber\":\"+18566836663\",\"gender\":\"M\",\"displayName\":\"白宇\",\"age\":32,\"username\":\"master_baiyu32\"},\"uid\":\"9yHe2xU067A3fTOc6bfEHYcuhbQF\",\"role\":\"MASTER\",\"lastLoginAt\":\"2022-11-07T21:38:14.972Z\",\"onlineStatus\":\"ONLINE\",\"location\":{\"latitude\":35.970150663183695,\"longitude\":-115.07847994565964}}";
    var json = jsonDecode(jsonStr);
    var res = OnlineMasterUserModel.fromJson(json);
  });
}
