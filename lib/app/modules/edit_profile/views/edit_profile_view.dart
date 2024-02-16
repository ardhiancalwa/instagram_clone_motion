import 'package:deep_dive_get_cli/app/modules/grid_post/views/grid_post_view.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/user_info.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/user_profile_data.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';
import '../../../data/model/story_model.dart';

import '../../../shared/widgets/highlight_story.dart';

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
              controller.userProfile.nameAccount,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 6,
            ),
            Container(
              width: 28,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              padding: const EdgeInsets.all(2),
              child: const Center(
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
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfile(userProfile: controller.userProfile),
            UserInfo(userProfile: controller.userProfile),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 97.75,
              child: ListView.builder(
                itemCount: controller.highlightStoryModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  StoryModel data2 = controller.highlightStoryModel[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                    ),
                    child: HighlightStory(
                      highlightStory: data2,
                      onTap: () {
                        controller.toStoryPageView(data2.storyItems);
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Expanded(
                child: GridPostView(),
              ),
            ),
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
              icon: const Icon(
                Icons.home_outlined,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_collection_outlined,
                size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 24,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
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
