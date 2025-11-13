import 'package:get/get.dart';

class IkeaNavigationBarController extends GetxController {
  // 当前页面索引
  var currentIndex = 0.obs;

  IkeaNavigationBarController();

  // 切换页面
  void changePage(int index) {
    currentIndex.value = index;
  }

  // 退出登录
  void logout() {
    Get.offAllNamed('/');
  }

  _initData() {
    update(["ikea_navigation_bar"]);
  }

  void onTap() {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
