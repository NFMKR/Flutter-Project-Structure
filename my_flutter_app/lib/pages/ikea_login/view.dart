import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class AiLoginPage extends GetView<AiLoginController> {
  const AiLoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const LoginFormWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildView(),
      ),
    );
  }
}
