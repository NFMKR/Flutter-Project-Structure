import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class AiHomePage extends GetView<AiHomeController> {
  const AiHomePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AiHomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("ai_home")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
