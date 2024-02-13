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
          controller:
              _tabx.tabController, // using the controller provided by GetX
          tabs: _tabx.gridPost,
        ),
      ),
      body: Flexible(
        child: TabBarView(
          controller:
              _tabx.tabController, // using the controller provided by GetX
          children: [
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemCount: _tabx.gridMap.length,
              itemBuilder: (_, index) {
                return Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      child: Image.asset(
                        "${_tabx.gridMap.elementAt(index)['image']}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              },
            ),
            Text('video'),
            Text('tag')
          ],
        ),
      ),
    );
  }
}
