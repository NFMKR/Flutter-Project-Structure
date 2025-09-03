import 'package:get/get.dart';

import 'controller.dart';

class AiLoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AiLoginController>(() => AiLoginController());
  }
}
