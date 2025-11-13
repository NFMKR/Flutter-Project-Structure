import 'package:get/get.dart';

import '../../pages/ikea_login/bindings.dart';
import '../../pages/ikea_login/view.dart';
import '../../pages/ikea_navigation_bar/bindings.dart';
import '../../pages/ikea_navigation_bar/view.dart';

class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: '/',
      page: () => const AiLoginPage(),
      binding: AiLoginBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => const IkeaNavigationBarPage(),
      binding: IkeaNavigationBarBinding(),
    ),
  ];
}