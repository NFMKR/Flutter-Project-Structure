import 'package:flutter/material.dart';
import '../state.dart';

// 单个灵感卡片组件
class InspirationCard extends StatelessWidget {
  final InspirationItem item;

  const InspirationCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          // 灵感图片
          Image.network(
            item.imageUrl,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          // 灵感标题
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              item.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}