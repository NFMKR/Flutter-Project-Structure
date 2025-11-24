import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import '../../pages/ikea_home/view.dart';
import '../../pages/ikea_personal/view.dart';
import '../../pages/ikea_inspiration/view.dart';
import '../../common/routers/index.dart';

class IkeaNavigationBarPage extends GetView<IkeaNavigationBarController> {
  const IkeaNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 页面列表（保持不变）
    final List<Widget> _pages = [
      const AiHomePage(),
      const Center(child: Text('分类页面')),
       IkeaInspirationView(),
      const Center(child: Text('购物袋页面')),
      const IkeaPersonalPage(),
    ];
    
    // Obx 监听响应式变量变化（核心不变）
    return Obx(() {
      return Scaffold(
        // 关键修正1：加 .value 提取 int 类型索引
        body: _pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF005596), // IKEA 蓝色
          unselectedItemColor: Colors.grey,
          // 关键修正2：加 .value 传递 int 类型参数
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage, // 点击触发修改 currentIndex
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: '灵感'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: '购物袋'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
          ],
        ),
      );
    });
  }
}