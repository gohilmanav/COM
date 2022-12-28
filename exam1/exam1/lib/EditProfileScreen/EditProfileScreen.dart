import 'package:exam1/Utils/app_color.dart';
import 'package:exam1/myprofile/Myprofile.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Editprofilescreen extends StatefulWidget {
  const Editprofilescreen({Key? key}) : super(key: key);

  @override
  State<Editprofilescreen> createState() => _Userststes();
}

class _Userststes extends State<Editprofilescreen> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColor.EditProfileBackgroundColor,
      key: key,
      appBar: AppBar(
        elevation: 0,backgroundColor:AppColor .inputfieldbackgroundcolor, actions: [
        Stack(children: [
          Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Myprofile()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 315),
                    child: Image.asset(
                      'assets/ic_back.png',
                      height: 40,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 16),
            child: Text(
              "Edit Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            
          )
        ])
      ]),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 55),
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor:AppColor.NotificationTextcolor,
                                    child: CircleAvatar(
                                      backgroundColor: AppColor.WhiteColor,
                                      backgroundImage:
                                          AssetImage('assets/ic_profile.png',),
                                      radius: 70,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 50, top: 110),
                                  child: IconButton(
                                    onPressed: () {
                                    },
                                    icon: Image.asset(
                                        'assets/ic_edit_profile.png'),
                                    iconSize: 10,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),



                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 50, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff2f3f7),
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assets/ic_profile.png',
                          width: 2,
                          height: 2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                     
                      hintText: 'First Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff2f3f7),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          'assets/ic_email.png',
                          width: 2,
                          height: 2,
                          fit: BoxFit.fill,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                     
                      hintText: 'Email ',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: IntlPhoneField(
                    autofocus: false,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.appbackgroundColor,
                      
                        contentPadding: const EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: AppColor.appbackgroundColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: AppColor.appbackgroundColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: AppColor.appbackgroundColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3, color: AppColor.appbackgroundColor),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: 'Phone Number'),
                    disableLengthCheck: true,
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    showCountryFlag: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15, bottom: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff2f3f7),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),

                      // floatingLabelAlignment: FloatingLabelAlignment.start,
                      hintText: "     License plate number",
                    ),
                  ),
                ),
                SizedBox(height: 38),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Container(
                    height: 46,
                    width: 320,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Myprofile()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                        textStyle: TextStyle(fontSize: 15),
                      ),
                      child: Text('Save profile'),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
