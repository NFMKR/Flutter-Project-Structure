import 'package:get/get.dart';

import 'index.dart';

class IkeaPersonalController extends GetxController {
  IkeaPersonalController();

  final state = IkeaPersonalState();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }
  
  // 退出登录
  void handleLogout() {
    Get.back(); // 关闭底部弹窗
    Get.offAllNamed('/'); // 返回登录页面
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
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
