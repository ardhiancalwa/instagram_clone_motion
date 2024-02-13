import 'package:flutter/material.dart';
import '../../data/model/notification_model.dart';

class MyNotification extends StatelessWidget {
  final NotificationModel notificationModel;
  const MyNotification({
    super.key,
    required this.notificationModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/profile/${notificationModel.image}.jpg'),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: '${notificationModel.nameAccount} ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: notificationModel.description,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
          notificationModel.isFollow
              ? ElevatedButton(
                  onPressed: () {},
                  child: Text("Follow"),
                )
              : Container(),
        ],
      ),
    );
  }
}
