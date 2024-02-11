import 'package:deep_dive_get_cli/app/data/model/edit_profile_model.dart';
import 'package:deep_dive_get_cli/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class EditProfileController extends GetxController {
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

  List<EditProfileModel> storyProfile = [];

  get storyController => null;

  get listOfStory => null;

  get snapGramComplete => null;

  void toHomeView() {
    Get.back();
  }
}
