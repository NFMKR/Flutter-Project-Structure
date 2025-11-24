import 'package:get/get.dart';
import 'state.dart';

class IkeaInspirationController extends GetxController {
  final state = IkeaInspirationState();

  @override
  void onInit() {
    super.onInit();
    _loadInspirationData();
  }

  // 模拟加载数据
  void _loadInspirationData() {
    state.inspirationList = [
      InspirationItem(title: "极简客厅布置", imageUrl: "https://picsum.photos/id/1067/300/200"),
      InspirationItem(title: "温馨卧室改造", imageUrl: "https://picsum.photos/id/1048/300/200"),
      InspirationItem(title: "小厨房收纳技巧", imageUrl: "https://picsum.photos/id/292/300/200"),
    ];
  }
}