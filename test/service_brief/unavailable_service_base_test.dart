// import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/service_brief/unavailable_service_base_model.dart';
// import '../service_brief/unavailable_service_base_test.dart';
import 'package:test/test.dart';

void main() {
  test("test unavailable smoking test", () {
    var unavailable = UnavailableServiceBaseModel(
      DateTime.now(),
      90,
      guid: "UnavailableServiceBaseModel_guid",
      createdAt: DateTime.now(),
      lastModifiedAt: null,
      canceledAt: null,
      addSubMinutes: null,
      previousStartAt: null,
    );
    var json = unavailable.toJson();
    var unavailable2 = UnavailableServiceBaseModel.fromJson(json);
    expect(unavailable2.guid, unavailable.guid);
  });
}
