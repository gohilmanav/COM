import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/ui/Forgotpage/Forgorpage.dart';
import 'package:exam2/ui/MyProfile/MyProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final Fname = TextEditingController();
  final Lname = TextEditingController();
  final Phone = TextEditingController();
  final email = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async=>false ,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.inputfieldbackgroundcolor,
            actions: [
              Stack(children: [
                Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyProfile()),
                        );
                      },
                      child: Container(
                        color: AppColor.inputfieldbackgroundcolor,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 318,
                            ),
                            child: Image.asset(
                              'assets/ic_back.png',
                              height: 40,
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, top: 13),
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
        body: GestureDetector(
             onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: SafeArea(
                child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.inputfieldbackgroundcolor),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/ic_profile.png",
                            color: AppColor.NotificationText2color,
                            scale: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 62, left: 65),
                            child: GestureDetector(
                              onTap: () {
                                Fluttertoast.showToast(
                                    msg: "under process",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIos: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              },
                              child: Image.asset(
                                "assets/ic_edit_pencil.png",
                                scale: 3.8,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, left: 22),
                    child: TextFormField(
                      controller: Fname,
                       inputFormatters: [
                          LengthLimitingTextInputFormatter(12)
                        ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            'assets/ic_profile.png',
                            scale: 2.8,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter First Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, left: 22, top: 30),
                    child: TextFormField(
                      controller: Lname,
                       inputFormatters: [
                          LengthLimitingTextInputFormatter(12)
                        ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: Image.asset(
                            'assets/ic_profile.png',
                            scale: 2.8,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Last Name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Last Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, left: 22, top: 30),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: Image.asset(
                            'assets/ic_email.png',
                            scale: 8,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Email Address',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0, left: 22, top: 30),
                    child: TextFormField(
                      controller: Phone,
                       inputFormatters: [
                          LengthLimitingTextInputFormatter(10)
                        ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Image.asset(
                            'assets/ic_phone_number.png',
                            scale: 7,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Phone Number',
                      ),keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Phone Number";
                        }
                        return null;
                      },
                    ),
                  ),
                   SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColor.TheamColor),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyProfile()),
                            ).then((value) {
                              formKey.currentState?.reset();
                              print(
                                "Success",
                              );
                              email.clear();
                              Fname.clear();
                              phone.clear();
                              Lname.clear();
                            });
                        },
                        child: Text(
                          "Save Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.WhiteColor,
                              fontSize: 14.5),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
