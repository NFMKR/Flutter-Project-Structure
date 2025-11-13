import 'package:get/get.dart';

import 'controller.dart';

class IkeaNavigationBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IkeaNavigationBarController>(() => IkeaNavigationBarController());
  }
}