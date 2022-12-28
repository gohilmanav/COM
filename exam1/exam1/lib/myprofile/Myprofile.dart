import 'package:exam1/EditProfileScreen/EditProfileScreen.dart';
import 'package:exam1/Neworders/Neworders.dart';
import 'package:exam1/Utils/app_color.dart';
import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _Userstate();
}

class _Userstate extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.EditProfileBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:AppColor.inputfieldbackgroundcolor,
        actions: [
          Stack(children: [
            Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Neworders()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300,),
                      child: Image.asset(
                        'assets/ic_back.png',
                        height: 40,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 13),
              child: Text(
                "My Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            )
          ])
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          IntrinsicWidth(
              child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(right: 200, bottom: 30),
              child: ClipOval(
                child: CircleAvatar(
                  backgroundColor:AppColor.WhiteColor,
                  radius: 45,
                  child: Image.asset("assets/ic_profile.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110,bottom: 50),
              child: Text(
                "Manav Gohil",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 110, top: 30),
              child: Text(
                "manav@gmail.com",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110, top: 58),
              child: Container(
                height: 30,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Editprofilescreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    textStyle: TextStyle(fontSize: 10),
                  ),
                  child: Text('Edit Profile'),
                ),
              ),
            ),
          ])),
         
          Divider(
            thickness: 2,
          ),
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.only(right: 140, bottom: 10,top: 20),
            child: Text(
              "Account information",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,top: 18),
            child: Row(
              children: [ ImageIcon(AssetImage("assets/ic_phone_number.png")),
              SizedBox(width: 5,),
                Text(" +91  6352744354",style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                ImageIcon(AssetImage("assets/ic_email.png")),
                SizedBox(width: 5,),
                Text("  Manav@gmail.com",style: TextStyle(fontSize: 15),),
              ],
            ),
          )
        ],
      )),
    );
  }
}
