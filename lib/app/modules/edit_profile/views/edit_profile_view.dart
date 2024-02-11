import 'package:deep_dive_get_cli/app/shared/widgets/image_story.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/user_info.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/user_profile_data.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../controllers/edit_profile_controller.dart';
import '../../snap_gram/controllers/snap_gram_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 6,
            ),
            Container(
              width: 28,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              padding: EdgeInsets.all(2),
              child: Center(
                child: Text(
                  '10+',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfile(userProfile: controller.userProfile),
            UserInfo(userProfile: controller.userProfile),
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
              onPressed: () => controller.toHomeView(),
              icon: Icon(
                Icons.home_outlined,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_collection_outlined,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 24,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 12,
                backgroundImage:
                    AssetImage("assets/images/profile/foto_profile.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
