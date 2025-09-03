import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class AiPaymentPage extends GetView<AiPaymentController> {
  const AiPaymentPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AiPaymentController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("ai_payment")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
