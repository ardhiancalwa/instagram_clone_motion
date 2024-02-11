import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

class SnapGramController extends GetxController {
  final storyController = StoryController();
  List<StoryItem> listOfStory = Get.arguments['story'];
  void snapGramComplete() {
    Get.back();
  }
}
