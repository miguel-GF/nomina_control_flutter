import 'package:get/get.dart';

import 'operador_controller.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Get.put(OperadorController());
    // ...
  }
}
