// 存储"灵感"页面的状态（数据）
class IkeaInspirationState {
  // 灵感列表 (标题+图片)
  List<InspirationItem> inspirationList = [];
}

// 单个数据的结构
class InspirationItem {
  final String title;
  final String imageUrl;

  InspirationItem({required this.title, required this.imageUrl});
}