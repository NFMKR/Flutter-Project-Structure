import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/personal_widgets.dart';

class AiPersonalPage extends GetView<AiPersonalController> {
  const AiPersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PersonalWidget();
  }
}
