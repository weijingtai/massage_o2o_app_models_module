import 'package:massage_o2o_app_models_module/src/models/service_brief/appointment_service_base_model.dart';
import 'package:test/test.dart';

void main() {
  test("test serving smoking test", () {
    var unavailable = AppointmentServiceBaseModel(
      storeUid: "AppointmentServiceBaseModel_storeUid",
      orderUid: "AppointmentServiceBaseModel_orderUid",
      serviceUid: "AppointmentServiceBaseModel_serviceUid",
      startAt: DateTime.now(),
      serviceDurationMinutes: 90,
      guid: "AppointmentServiceBaseModel_guid",
      createdAt: DateTime.now(),
      lastModifiedAt: null,
      canceledAt: null,
      addSubMinutes: null,
      previousStartAt: null,
    );
    var json = unavailable.toJson();
    var unavailable2 = AppointmentServiceBaseModel.fromJson(json);
    expect(unavailable2.orderUid, unavailable.orderUid);
  });
}
