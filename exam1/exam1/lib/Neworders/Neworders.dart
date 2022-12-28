import 'package:exam1/Notification/Notification.dart';
import 'package:exam1/Utils/app_color.dart';
import 'package:exam1/login_page/login.dart';
import 'package:flutter/material.dart';

class Neworders extends StatefulWidget {
  const Neworders({Key? key}) : super(key: key);

  @override
  State<Neworders> createState() => _Userststes();
}

class _Userststes extends State<Neworders> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.EditProfileBackgroundColor,
        key: _key,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.inputfieldbackgroundcolor,
          actions: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                      onTap: () {
                        _key.currentState?.openDrawer();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/ic_dwr_menu.png',
                          height: 35,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Center(
                    child: Text(
                      '    New order',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const notification()),
                    );
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 310, right: 10),
                      child: Image.asset(
                        'assets/ic_notification.png',
                        height: 35,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        drawer: Container(
            child: Drawer(
                child: ListView(children: [
          Container(
            height: 120,
            //width:80,
            //margin: EdgeInsets.only(right: 20),
            child: Container(
              height: 110,
              child: DrawerHeader(
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            'assets/ic_profile.png',
                          ),
                          backgroundColor: AppColor.WhiteColor,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 25, right: 40),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Gohil Manav",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, right: 30),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Manav@gmail.com",
                                    style: TextStyle(color: AppColor.TextColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_profile.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              "My profile",
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_terms_condition.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              "Active Order",
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_order_history.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'Orders History',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_refer_earn.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'My Earnings',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_notification.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'Notification',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_about_us.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_terms_condition.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'Terms&Conditions',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_help_support.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'Help & Support',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListTile(
            leading: Image(
              image: AssetImage(
                "assets/ic_setting.png",
              ),
              height: 30,
              width: 30,
            ),
            title: Text(
              'Change Password',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginpage()),
                  );
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(7)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'log out',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: AppColor.WhiteColor),
                      )),
                ),
              ),
            ),
          ),
        ])
        )
        ),
       body: SafeArea(child: Column(children: [
        Container(
        
        child: Padding(
          padding: const EdgeInsets.only(left: 130,top: 310),
          child: Text("No Data Found",style: TextStyle(fontSize: 16),),
        ),)
       ],)), );
  }
}
