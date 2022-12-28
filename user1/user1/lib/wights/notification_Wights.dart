

import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/models/notification_modal.dart';

// ignore: must_be_immutable
class notification_wight extends StatelessWidget {
  notification_wight({Key? key, required this.notification}) : super(key: key);
  notificationmodel notification;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "Order no. ${notification.orderno} assign to \nyou",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.NotificationTextcolor),
            ),
            SizedBox(
              width: 60,
            ),
            Text("${notification.month}  ago",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.NotificationText2color))
          ],
        ),
      ),
    );
  }
}

   