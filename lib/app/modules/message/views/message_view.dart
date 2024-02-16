import 'package:deep_dive_get_cli/app/modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EditProfileController editProfileController = EditProfileController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              editProfileController.userProfile.nameAccount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.border_color_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'MessageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
