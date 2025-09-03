import 'package:get/get.dart';

import 'controller.dart';

class AiPaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AiPaymentController>(() => AiPaymentController());
  }
}
