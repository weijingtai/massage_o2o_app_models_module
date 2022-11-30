// import 'package:massage_o2o_app_models_module/enums.dart';
import 'dart:convert';

import 'package:massage_o2o_app_models_module/src/models/service_brief/serving_service_base_model.dart';
// import '../service_brief/serving_service_base_test.dart';
import 'package:test/test.dart';

void main() {
  group("test desc from JSON data", () {
    test("default", () {
      var jsData = {
        "guid": "MasterStateSketchServingModel",
        "startAt": "2022-11-30T01:29:39.070Z",
        "createdAt": "2022-11-30T01:29:39.070Z",
        "type": "Serving",
        "serviceUid": "MasterStateSketchServingModel_serviceUid",
        "storeUid": "MasterStateSketchServingModel_storeUid",
        "orderUid": "MasterStateSketchServingModel_orderUid",
        "serviceDurationMinutes": 60,
        "completedSeconds": -1
      };
      var serving = ServingServiceBaseModel.fromJson(jsData);
      expect(serving.toJson(), jsData);
    });

    test("with 'endAt'", () {
      var jsonData = {
        "guid": "MasterStateSketchServingModel",
        "startAt": "2022-11-30T02:21:58.069Z",
        "endAt": "2022-11-30T03:21:58.069Z",
        "createdAt": "2022-11-30T02:21:58.069Z",
        "type": "Serving",
        "serviceUid": "MasterStateSketchServingModel_serviceUid",
        "storeUid": "MasterStateSketchServingModel_storeUid",
        "orderUid": "MasterStateSketchServingModel_orderUid",
        "serviceDurationMinutes": 60,
        "completedSeconds": -1
      };
      var serving = ServingServiceBaseModel.fromJson(jsonData);
      expect(serving.endAt, isNotNull);
      expect(serving.endAt, isA<DateTime>());
      expect(serving.endAt!.isUtc, isFalse);
      expect(serving.endAt!.hour == 3, isFalse);
      expect(serving.toJson(), jsonData);
    });

    test("with 'addSubMinutes'", () {
      const jsonData = {
        "guid": "MasterStateSketchServingModel",
        "startAt": "2022-11-30T02:27:59.278Z",
        "endAt": "2022-11-30T03:27:59.278Z",
        "createdAt": "2022-11-30T02:27:59.278Z",
        "addSubMinutes": [45, -30],
        "type": "Serving",
        "serviceUid": "MasterStateSketchServingModel_serviceUid",
        "storeUid": "MasterStateSketchServingModel_storeUid",
        "orderUid": "MasterStateSketchServingModel_orderUid",
        "serviceDurationMinutes": 60,
        "completedSeconds": -1
      };
      var serving = ServingServiceBaseModel.fromJson(jsonData);
      expect(serving.addSubMinutes, isNotNull);
      expect(serving.addSubMinutes, isA<List<int>>());
      expect(serving.addSubMinutes!.length, 2);
      expect(serving.addSubMinutes!, [45, -30]);
      expect(serving.toJson(), jsonData);
    });
  });
  test("test serving smoking test", () {
    var serving = ServingServiceBaseModel(
      storeUid: "ServingServiceBaseModel_storeUid",
      orderUid: "ServingServiceBaseModel_orderUid",
      serviceUid: "ServingServiceBaseModel_serviceUid",
      startAt: DateTime.now(),
      serviceDurationMinutes: 90,
      guid: "ServingServiceBaseModel_guid",
      endAt: null,
      resetAt: null,
      completedSeconds: -1,
      createdAt: DateTime.now(),
      lastModifiedAt: null,
      canceledAt: null,
      addSubMinutes: [-30, 60],
      previousStartAt: null,
    );
    var servingJson = serving.toJson();
    print(jsonEncode(servingJson));
    var serving2 = ServingServiceBaseModel.fromJson(servingJson);
    // expect(DateTime.now().toUtc().toIso8601String().split('').last, "Z");
    expect(serving2.orderUid, serving.orderUid);
  });
}
