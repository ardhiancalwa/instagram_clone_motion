import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridPostController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> gridPost = <Tab>[
    Tab(
      icon: Icon(Icons.grid_on),
    ),
    Tab(
      icon: Icon(Icons.video_collection_outlined),
    ),
    Tab(
      icon: Icon(Icons.person_pin_outlined),
    ),
  ];

  final List<Map<dynamic, dynamic>> gridMap = [
    {
      'image': 'assets/images/post/coconut.jpg',
    },
    {
      'image': 'assets/images/post/pie.jpg',
    },
    {
      'image': 'assets/images/post/city.jpg',
    },
    {
      'image': 'assets/images/post/lemon.jpg',
    },
    {
      'image': 'assets/images/post/breakfast.jpg',
    },
    {
      'image': 'assets/images/post/living_room.jpg',
    },
    {
      'image': 'assets/images/story/japan.jpg',
    },
    {
      'image': 'assets/images/story/dubai.jpg',
    },
    {
      'image': 'assets/images/story/germany.jpg',
    },
    {
      'image': 'assets/images/story/korea.jpg',
    },
    {
      'image': 'assets/images/story/swiss.jpg',
    },
  ];

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: gridPost.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
}
