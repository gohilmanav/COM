// ignore_for_file: prefer_const_constructors

import 'package:exam1/EditProfileScreen/EditProfileScreen.dart';
import 'package:exam1/Forgotpage/Forgotpage.dart';
import 'package:exam1/Utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _Userstate();
}

class _Userstate extends State<Loginpage> {
  bool _obsecureText = true;
  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.inputfieldbackgroundcolor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Image(
                      image: AssetImage("assets/ic_logo_icon.png"),
                      height: 75,
                      width: 75,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 31,
                      color: AppColor.BlackColor),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 23.0, right: 23.0, top: 15, bottom: 0),
                  child: TextField(
                  
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: AppColor.EditProfileBackgroundColor,
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/ic_email.png',
                              // width: 7,
                              scale: 6,
                              // height: 7,
                              // fit: BoxFit.fill,
                            ),
                          ),
                          hintText:  "  Email Address"))),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 23, right: 23),
                    child: TextFormField(
                        obscureText: _obsecureText,
                        inputFormatters: [LengthLimitingTextInputFormatter(6)],
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.WhiteColor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.all(10),
                            suffixIcon: Transform.scale(
                              scale: 0.5,
                              child: ImageIcon(
                                AssetImage(
                                  "assets/ic_lock.png",
                                ),
                                color: AppColor.TextColor,
                                size: 12,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                           
                            //labelText: 'Enter Password',
                            hintText: 'Password',
                            hintStyle: TextStyle(color: AppColor.TextColor)),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, left: 270),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Transform.scale(
                        scale: 0.9,
                        child: ImageIcon(
                          _obsecureText
                              ? AssetImage(
                                  "assets/ic_eye_close.png",
                                )
                              : AssetImage(
                                  "assets/ic_eye.png",
                                ),
                          color: AppColor.TextColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 45,
                width: 320,
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
                        borderRadius: BorderRadius.circular(7))),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 35),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Forgotpage()),
                  );
                },
                child: Text(
                  "Forgot Password? ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )))
        ],
      )),
    );
  }
}
