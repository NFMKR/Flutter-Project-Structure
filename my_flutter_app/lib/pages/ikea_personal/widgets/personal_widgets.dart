import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 个人页面组件
class PersonalWidget extends GetView<IkeaPersonalController> {
  const PersonalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
        backgroundColor: const Color(0xFF005596),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // 显示设置选项
              Get.bottomSheet(
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        '设置',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: const Icon(Icons.logout),
                        title: const Text('退出登录'),
                        onTap: controller.handleLogout,
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.close),
                        title: const Text('取消'),
                        onTap: () => Get.back(),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 用户信息卡片
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF005596),
                      child: Icon(Icons.person, color: Colors.white, size: 30),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jason',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text('会员等级: 普通会员'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 功能列表
            const Text(
              '我的服务',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.shopping_bag, color: Color(0xFF005596)),
                    title: const Text('我的订单'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 跳转到订单页面
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.location_on, color: Color(0xFF005596)),
                    title: const Text('收货地址'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 跳转到地址管理页面
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.favorite, color: Color(0xFF005596)),
                    title: const Text('我的收藏'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 跳转到收藏页面
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.help, color: Color(0xFF005596)),
                    title: const Text('帮助与客服'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // 跳转到帮助页面
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
