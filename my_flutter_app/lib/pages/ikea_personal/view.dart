import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/personal_widgets.dart';

class IkeaPersonalPage extends GetView<IkeaPersonalController> {
  const IkeaPersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PersonalWidget();
  }
}
