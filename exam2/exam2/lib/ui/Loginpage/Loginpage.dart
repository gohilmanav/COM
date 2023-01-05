import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/main.dart';
import 'package:exam2/ui/Forgotpage/Forgorpage.dart';
import 'package:exam2/ui/RegisterPage/RegisterPage.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
final pass = TextEditingController();
final email = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Center(
                    child: Container(
                      // width: 150,
                      // height: 150,
                      child: Center(
                          child: Image.asset(
                        "assets/ic_logo_icon.png",
                        scale: 1.1,
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: AppColor.NotificationText2color),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28, left: 22, right: 22),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: AppColor.inputfieldbackgroundcolor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Image.asset(
                          'assets/ic_email.png',
                          scale: 7.5,
                        ),
                      ),
                      hintText: 'Email Address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return "Enter valid email address";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22, left: 22),
                  child: TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: AppColor.inputfieldbackgroundcolor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Image.asset(
                          'assets/ic_lock.png',
                          scale: 7.2,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 18),
                        child: Image.asset(
                          "assets/ic_eye_close.png",
                          scale: 7.3,
                        ),
                      ),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter password";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  height: 47,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColor.TheamColor),
                  child: TextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false)
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        ).then((value) {
                          formKey.currentState?.reset();
                          print(
                            "Success",
                          );
                          email.clear();
                          pass.clear();
                        });
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.WhiteColor,
                          fontSize: 14.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 47,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.NotificationTextcolor,
                          offset: const Offset(
                            0.5,
                            0.5,
                          ),
                          blurRadius: .5,
                          // spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(color: AppColor.TheamColor, width: 1.2)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: Text(
                      "Continue as guest",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.TheamColor,
                          fontSize: 14.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or Login With",
                  style: TextStyle(
                      color: AppColor.NotificationTextcolor, fontSize: 16),
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: "under process",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIos: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/ic_facebook.png",
                          scale: 3.7,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: "under process",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIos: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                      child: Container(
                          child: Image.asset(
                        "assets/ic_google.png",
                        scale: 3.8,
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPage()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColor.NotificationTextcolor,
                        fontSize: 15.5),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RagisterPage()),
                    );
                },
                  child: RichText(
                      text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                              color: AppColor.NotificationTextcolor,
                              fontSize: 15.5),
                          children: [
                        TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: AppColor.TheamColor,
                                fontSize: 15.5))
                      ])),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
