import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/Home/HomePage.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late TextEditingController emailCtr;
  late TextEditingController password;
  late TextEditingController passwordMobile;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool _obsecureText = true;
  bool _obsecureTextpassword = true;
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  // ignore: unused_element
  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  void _toggleObscuredpassword() {
    setState(() {
      _obsecureTextpassword = !_obsecureTextpassword;
    });
  }

  @override
  void initState() {
    emailCtr = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppTheme.themeData(context).backgroundColor,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: SafeArea(
              child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: AppTheme.themeData(context).cardColor),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Access account",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/google.jpg")),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/face.png")),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 30,
                  width: 170,
                  child: Text(
                    "or Login with Email",
                    style: TextStyle(
                        fontSize: 18,
                        color: AppTheme.themeData(context).canvasColor),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 23.0, right: 23.0, top: 15, bottom: 0),
                    child: TextFormField(
                        controller: emailCtr,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(' '),
                          LengthLimitingTextInputFormatter(40),
                          FilteringTextInputFormatter.deny("[]"),
                          FilteringTextInputFormatter.deny("["),
                          FilteringTextInputFormatter.deny("]"),
                          FilteringTextInputFormatter.deny("^"),
                          FilteringTextInputFormatter.deny(""),
                          FilteringTextInputFormatter.deny("`"),
                          FilteringTextInputFormatter.deny("/"),
                          FilteringTextInputFormatter.deny("\\"),
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[0-9a-zA-z._@]')),
                          FilteringTextInputFormatter.deny(RegExp(r"/"))
                        ],
                        validator: (value) {
                          if (value == "" || (value?.trim().isEmpty ?? true)) {
                            return "Please enter email";
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value ?? "")) {
                            return "Enter valid email address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor:
                                AppTheme.themeData(context).indicatorColor,
                            contentPadding: EdgeInsets.all(10.0),
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
                            hintText: "Email Address"))),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 23, right: 23),
                      child: TextFormField(
                        controller: password,
                        obscureText: _obsecureTextpassword,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(' '),
                          LengthLimitingTextInputFormatter(16)
                        ],
                        validator: (value) {
                          if (value == "" || (value?.trim().isEmpty ?? true)) {
                            return "Please enter password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                AppTheme.themeData(context).indicatorColor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            contentPadding: const EdgeInsets.all(15),
                            suffixIcon: GestureDetector(
                              onTap: _toggleObscuredpassword,
                              child: Transform.scale(
                                scale: 0.5,
                                child: GestureDetector(
                                  child: ImageIcon(
                                    _obsecureTextpassword
                                        ? AssetImage(
                                            "assets/ic_eye_close.png",
                                          )
                                        : AssetImage(
                                            "assets/ic_eye.png",
                                          ),
                                    color: AppColor.TextColor,
                                    size: 12,
                                  ),
                                ),
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

                    // Container(
                    //   padding: EdgeInsets.only(top: 15, right: 20, left: 20),
                    //   child: Column(children: [
                    //     TextField(
                    //       controller: emailCtr,
                    //     )
                    //   ]),
                    // )
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 32, left: 270),
                    //   child: GestureDetector(
                    //     onTap: _toggleObscured,
                    //     child: Transform.scale(
                    //       scale: 0.9,
                    //       child: ImageIcon(
                    //         _obsecureText
                    //             ? AssetImage(
                    //                 "assets/ic_eye_close.png",
                    //               )
                    //             : AssetImage(
                    //                 "assets/ic_eye.png",
                    //               ),
                    //         color: AppColor.TextColor,
                    //         size: 25,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 56,
                  width: 270,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false)
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        ).then((value) {
                          formKey.currentState?.reset();
                        });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: AppTheme.themeData(context).disabledColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      "sign in",
                      style: TextStyle(
                          color: AppTheme.themeData(context).cardColor,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65.0),
                  child: Row(
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                            color: AppTheme.themeData(context).canvasColor),
                      ),
                      Text(
                        " Register",
                        style: TextStyle(
                            color: AppTheme.themeData(context).cardColor,
                            fontSize: 17),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
