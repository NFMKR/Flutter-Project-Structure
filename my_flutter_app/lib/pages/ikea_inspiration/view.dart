import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'widgets/widgets.dart';

// 关键1：去掉 const 构造函数（解决热重载被拒绝的问题）
class IkeaInspirationView extends StatelessWidget {
  // 从 const 改成普通构造
  IkeaInspirationView({super.key});

  @override
  Widget build(BuildContext context) {
    // 关键2：用 Get.put() + 手动判重（4.x 绝对兼容，杜绝方法未定义）
    late IkeaInspirationController controller;
    if (Get.isRegistered<IkeaInspirationController>()) {
      // 已注册：复用实例
      controller = Get.find<IkeaInspirationController>();
    } else {
      // 未注册：创建并注入（Get.put() 是所有 GetX 版本都支持的核心方法）
      controller = Get.put(IkeaInspirationController());
    }

    return Scaffold(
      appBar: AppBar(title: const Text("灵感")),
      body: GetBuilder<IkeaInspirationController>(
        init: controller, // 显式绑定实例，杜绝 null
        builder: (ctl) {
          if (ctl.state.inspirationList.isEmpty) {
            return const Center(child: Text("暂无灵感内容", style: TextStyle(fontSize: 16)));
          }
          return ListView.builder(
            itemCount: ctl.state.inspirationList.length,
            itemBuilder: (_, index) => InspirationCard(item: ctl.state.inspirationList[index]),
          );
        },
      ),
    );
  }
}