import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/home_widgets.dart';

class AiHomePage extends GetView<AiHomeController> {
  const AiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeWidget();
  }
}
