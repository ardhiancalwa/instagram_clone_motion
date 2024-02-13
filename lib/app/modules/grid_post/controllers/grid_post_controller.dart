import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridPostController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void onInit() {
    tabController = TabController(length: gridPost.length, vsync: this);
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  final List<Tab> gridPost = <Tab>[
    const Tab(
      icon: Icon(Icons.grid_on),
    ),
    const Tab(
      icon: Icon(Icons.video_collection_outlined),
    ),
    const Tab(
      icon: Icon(Icons.person_pin_outlined),
    ),
  ];

  final List<Map<String, String>> postMap = List.generate(15, (index) {
    return {
      'images': '${faker.image.image(
        random: true,
      )}'
    };
  });
  final List<Map<String, String>> reelsMap = List.generate(15, (index) {
    return {
      'images': '${faker.image.image(
        random: true,
        width: 130,
        height: 200,
      )}'
    };
  });
}
