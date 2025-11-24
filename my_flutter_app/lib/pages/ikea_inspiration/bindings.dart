import 'package:get/get.dart';
import 'controller.dart';

class IkeaInspirationBindings extends Bindings {
  @override
  void dependencies() {
    // 这里必须正确创建控制器实例
    Get.lazyPut<IkeaInspirationController>(() => IkeaInspirationController());
  }
}