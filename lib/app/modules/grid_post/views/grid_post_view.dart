import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/grid_post_controller.dart';

class GridPostView extends GetView<GridPostController> {
  final GridPostController _tabx = Get.put(GridPostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabx.tabController,
          tabs: _tabx.gridPost,
        ),
      ),
      body: Flexible(
        flex: 1,
        child: TabBarView(
          controller: _tabx.tabController,
          children: [
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: _tabx.postMap.length,
              itemBuilder: (_, index) {
                return Image.network(
                  "${_tabx.postMap.elementAt(index)['images']}",
                  fit: BoxFit.cover,
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1 / 2,
              ),
              itemCount: _tabx.reelsMap.length,
              itemBuilder: (_, index) {
                return Image.network(
                  "${_tabx.reelsMap.elementAt(index)['images']}",
                  fit: BoxFit.cover,
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: _tabx.postMap.length,
              itemBuilder: (_, index) {
                return Image.network(
                  "${_tabx.postMap.elementAt(index)['images']}",
                  fit: BoxFit.cover,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
