import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import '../../pages/ikea_home/view.dart';
import '../../pages/ikea_personal/view.dart';

class IkeaNavigationBarPage extends GetView<IkeaNavigationBarController> {
  const IkeaNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 页面列表
    final List<Widget> _pages = [
      const AiHomePage(),
      const Center(child: Text('分类页面')),
      const Center(child: Text('灵感页面')),
      const Center(child: Text('购物袋页面')),
      const AiPersonalPage(),
    ];
    
    return GetBuilder<IkeaNavigationBarController>(
      init: IkeaNavigationBarController(),
      id: "ikea_navigation_bar",
      builder: (controller) {
        return Scaffold(
          body: _pages[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFF005596), // IKEA 蓝色
            unselectedItemColor: Colors.grey,
            currentIndex: controller.currentIndex.value,
            onTap: controller.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '首页',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: '分类',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lightbulb),
                label: '灵感',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: '购物袋',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '我的',
              ),
            ],
          ),
        );
      },
    );
  }
}
