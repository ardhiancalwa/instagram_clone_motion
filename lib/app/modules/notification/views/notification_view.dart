import 'package:deep_dive_get_cli/app/data/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/notification_widget.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 1000,
              child: ListView.builder(
                itemCount: controller.notificationModel.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  NotificationModel data = controller.notificationModel[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: MyNotification(notificationModel: data),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.video_collection_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/profile/foto_profile.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
