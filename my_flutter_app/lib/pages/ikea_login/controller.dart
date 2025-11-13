import 'package:get/get.dart';

import 'index.dart';

class AiLoginController extends GetxController {
  AiLoginController();

  final state = AiLoginState();

  // 更新用户名
  void updateUsername(String value) {
    state.username = value;
  }

  // 更新密码
  void updatePassword(String value) {
    state.password = value;
  }

  // 登录操作
  void handleLogin() {
    if (state.username.isEmpty || state.password.isEmpty) {
      Get.snackbar(
        "错误",
        "请输入用户名和密码",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // 验证用户名和密码
    if (state.username == "Jason" && state.password == "123456") {
      Get.snackbar(
        "成功",
        "登录成功",
        snackPosition: SnackPosition.BOTTOM,
      );
      
      // 登录成功后导航到主页
      Get.offAllNamed('/home');
    } else {
      Get.snackbar(
        "错误",
        "用户名或密码错误",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // 忘记密码
  void handleForgotPassword() {
    Get.snackbar(
      "提示",
      "忘记密码功能",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // 注册新账户
  void handleRegister() {
    Get.snackbar(
      "提示",
      "注册新账户功能",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    // 初始化标题
    state.title = "欢迎登录";
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