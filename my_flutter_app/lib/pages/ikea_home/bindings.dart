import 'package:get/get.dart';

import 'controller.dart';

class AiHomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AiHomeController>(() => AiHomeController());
  }
}
