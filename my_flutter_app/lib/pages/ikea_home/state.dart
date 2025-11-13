import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AiHomeState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
  
  // 轮播图图片列表
  final _bannerImages = [
    "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
  ].obs;
  get bannerImages => _bannerImages;
  
  // 功能按钮列表
  final _featureButtons = [
    {"icon": Icons.account_circle, "label": "会员中心"},
    {"icon": Icons.leaderboard, "label": "排行榜"},
    {"icon": Icons.store, "label": "宜家商城"},
    {"icon": Icons.home, "label": "全屋设计"},
    {"icon": Icons.design_services, "label": "自助设计"},
    {"icon": Icons.business, "label": "对公业务"},
    {"icon": Icons.new_releases, "label": "新品"},
    {"icon": Icons.apps, "label": "全部频道"},
  ].obs;
  get featureButtons => _featureButtons;
}
