import 'package:get/get.dart';

import 'controller.dart';

class IkeaPersonalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IkeaPersonalController>(() => IkeaPersonalController());
  }
}
