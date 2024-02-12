import 'package:deep_dive_get_cli/app/data/model/edit_profile_model.dart';
import 'package:deep_dive_get_cli/app/data/model/story_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../../../routes/app_pages.dart';

class EditProfileController extends GetxController {
  final highlightStoryController = StoryController();
  EditProfileModel userProfile = EditProfileModel(
    imageProfile: 'foto_profile',
    numOfPosts: '1,234',
    numOfFollowers: '5,678',
    numOfFollowing: '9,012',
    username: 'Username',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
    category: 'Category/Genre text',
    hyperlink: 'Link goes here',
    hashtag: '#hastag',
  );
  void toHomeView() {
    Get.back();
  }

  List<StoryModel> highlightStoryModel = [];

  @override
  void onInit() {
    loadHighlightStoryModel();
    super.onInit();
  }

  void loadHighlightStoryModel() {
    highlightStoryModel = [
      StoryModel(
        image: 'japan',
        namaAkun: 'Japan',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'germany',
        namaAkun: 'Germany',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'swiss',
        namaAkun: 'Swiss',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'korea',
        namaAkun: 'Korea',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'dubai',
        namaAkun: 'Dubai',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'spain',
        namaAkun: 'Spain',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'thai',
        namaAkun: 'Thailand',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'french',
        namaAkun: 'French',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        image: 'italy',
        namaAkun: 'Italy',
        storyItems: [
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: 'lorem ',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    ];
  }

  void toStoryPageView(
    List<StoryItem>? highlightStoryItems,
  ) {
    Get.toNamed(Routes.HIGHLIGHT_STORY, arguments: {
      'highlight_story': highlightStoryItems,
    });
  }
}
