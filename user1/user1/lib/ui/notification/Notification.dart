
import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/models/notification_modal.dart';
import 'package:user1/ui/base/base.dart';
import 'package:user1/wights/notification_Wights.dart';

//import '../Neworders/Neworders.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _Userststes();
}

class _Userststes extends State<notification> {
  List<notificationmodel> notificationlist = [
    notificationmodel(orderno: "1001", month: "1month"),
    notificationmodel(orderno: "2002", month: "1month"),
    notificationmodel(orderno: "3003", month: "1month"),
    notificationmodel(orderno: "4004", month: "2month"),
    notificationmodel(orderno: "5005", month: "2month"),
    notificationmodel(orderno: "6006", month: "3month"),
    notificationmodel(orderno: "1548", month: "3month"),
    notificationmodel(orderno: "1245", month: "4month"),
    notificationmodel(orderno: "1458", month: "4month"),
    notificationmodel(orderno: "4674", month: "1month"),
    notificationmodel(orderno: "2556", month: "1month"),
    notificationmodel(orderno: "3555", month: "1month"),
    notificationmodel(orderno: "4484", month: "2month"),
    notificationmodel(orderno: "5564", month: "2month"),
    notificationmodel(orderno: "6578", month: "3month"),
    notificationmodel(orderno: "1748", month: "3month"),
    notificationmodel(orderno: "1945", month: "4month"),
    notificationmodel(orderno: "1358", month: "4month"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.WhiteColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: AppColor.inputfieldbackgroundcolor,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => base()),
                        );
                      }),
                      child: ImageIcon(
                        AssetImage(
                          "assets/ic_back.png",
                        ),
                        size: 30,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "New Notification",
                      style: TextStyle(
                          fontSize: 15, color: AppColor.NotificationText2color),
                    )),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            child: ListView.separated(
              primary: false,
              itemCount: notificationlist.length,
              itemBuilder: (context, index) {
                return notification_wight(
                    notification: notificationlist[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 5,
                );
              },
            ),
          ))
        ],
      )),
    );
  }
}
