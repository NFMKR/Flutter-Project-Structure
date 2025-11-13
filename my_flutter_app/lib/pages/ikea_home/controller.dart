import 'package:get/get.dart';

import 'index.dart';

class AiHomeController extends GetxController {
  AiHomeController();

  final state = AiHomeState();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }
  
  // 处理通知点击
  void handleNotificationTap() {
    Get.snackbar(
      "通知",
      "您有新的通知",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  
  // 跳转到个人页面
  void navigateToPersonal() {
    // 这里我们不需要做任何事情，因为个人页面已经在底部导航栏中
    // 但我们可以添加一些逻辑，比如更新个人页面的数据
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    // 初始化标题
    state.title = "宜家首页";
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
