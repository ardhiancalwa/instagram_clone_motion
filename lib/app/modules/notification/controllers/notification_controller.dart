import 'package:get/get.dart';
import '../../../data/model/notification_model.dart';

class NotificationController extends GetxController {
  List<NotificationModel> notificationModel = [];
  @override
  void onInit() {
    loadNotificationModel();
    super.onInit();
  }

  void loadNotificationModel() {
    notificationModel = [
      NotificationModel(
        nameAccount: 'nameAccount',
        description: 'lorem ipsum dolor sit amet, consectetur adipiscing',
        time: '4h',
        image: 'foto_profile',
        isFollow: false,
      ),
      NotificationModel(
        nameAccount: 'nameAccount',
        description: 'lorem ipsum dolor sit amet, consectetur adipiscing',
        time: '4h',
        image: 'foto_profile',
        isFollow: false,
      ),
    ];
  }
}
