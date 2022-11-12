import 'package:massage_o2o_app_models_module/enums.dart';
import 'package:massage_o2o_app_models_module/src/models/assign_model.dart';
import 'package:test/test.dart';

void main() {
  test("test seri", () {
    var assign = AssignModel("",
        masterUid: "",
        serviceGuid: "",
        orderGuid: "",
        hostUid: "",
        assignTimeoutSeconds: 90,
        deliverTimeoutSeconds: 30,
        currentOrderStatus: OrderStatusEnum.Assigning,
        senderUid: "",
        createdAt: DateTime.now().subtract(Duration(hours: 2)));
    assign.assignAt = DateTime.now();
    expect(assign.assignTimeoutAt != null, true);
    expect(assign.toJson()["assignTimeoutAt"] != null, true);
  });
}
