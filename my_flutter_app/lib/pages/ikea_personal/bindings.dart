import 'package:get/get.dart';

import 'controller.dart';

class AiPersonalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AiPersonalController>(() => AiPersonalController());
  }
}
