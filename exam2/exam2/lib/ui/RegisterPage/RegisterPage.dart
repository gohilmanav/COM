import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/ui/Loginpage/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RagisterPage extends StatefulWidget {
  const RagisterPage({Key? key}) : super(key: key);

  @override
  State<RagisterPage> createState() => _RagisterPageState();
}

class _RagisterPageState extends State<RagisterPage> {
  bool isChecked = false;
  final pass = TextEditingController();
    final Fname = TextEditingController();
  final Lname = TextEditingController();
  final Phone = TextEditingController();
  final Cpass = TextEditingController();
  final email = TextEditingController();
  final refer = TextEditingController();



  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30, right: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Container(
                                child: Image.asset(
                              "assets/ic_back.png",
                              scale: 4.8,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Center(
                          child: Container(
                            child: Center(
                                child: Image.asset(
                              "assets/ic_logo_icon.png",
                              scale: 1.5,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.NotificationText2color,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.inputfieldbackgroundcolor),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/ic_profile.png",color: AppColor.NotificationText2color,
                        scale: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 62,left: 65),
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
                            "assets/ic_edit_icon.png",
                            scale: 3.8,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22.0, left: 22),
                  child: TextFormField(
                      controller: Fname,
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
                  padding:
                      const EdgeInsets.only(right: 22.0, left: 22, top: 20),
                  child: TextFormField(
                     controller: Lname,
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
                  padding:
                      const EdgeInsets.only(right: 22.0, left: 22, top: 20),
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
                  padding:
                      const EdgeInsets.only(right: 22.0, left: 22, top: 20),
                  child: TextFormField(
                      controller: Phone,
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
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Phone Number";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22, left: 22),
                  child: TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset(
                            'assets/ic_lock.png',
                            scale: 7,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: GestureDetector(
                              child: Image.asset(
                            "assets/ic_eye_close.png",
                            scale: 8,
                          )),
                        ),
                        hintText: 'Password'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22, left: 22),
                  child: TextFormField(
                   controller: Cpass,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff2f3f7),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/ic_lock.png",
                            scale: 8,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: GestureDetector(
                              child: Image.asset(
                            "assets/ic_eye_close.png",
                            scale: 8,
                          )),
                        ),
                        hintText: 'Confirm Password'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password Again";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 22.0, left: 22, top: 20),
                  child: TextFormField(
                      controller: refer,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff2f3f7),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        // child: Image.asset(
                        //   'assets/ic_referal_code.png',
                        //   scale: 2.8,
                        // ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                      hintText: 'Referral Code (Optional)',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter refer code";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Checkbox(
                        activeColor: Colors.deepOrange,
                        checkColor: Colors.white,
                       // side: sid,
                        // hoverColor: Colors.deepOrange,
                        // focusColor:Colors.deepOrange ,
                        //fillColor: MaterialStateProperty.resolveWith(),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "I agree ",
                        style:
                            TextStyle(color: AppColor.NotificationTextcolor, fontSize: 15),
                        children: [
                          TextSpan(
                            text: "User Agreement",
                            style: TextStyle(
                                color: AppColor.TheamColor,
                                decoration: TextDecoration.underline,
                                fontSize: 15),
                          ),
                          TextSpan(
                              text: " & ",
                              style: TextStyle(
                                  color: AppColor.NotificationTextcolor, fontSize: 15)),
                          TextSpan(
                              text: "Privacy policy",
                              style: TextStyle(
                                  color: AppColor.TheamColor,
                                  decoration: TextDecoration.underline,
                                  fontSize: 15))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
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
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.WhiteColor,
                          fontSize: 14.5),
                    ),
                  ),
                ),
                 SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LoginPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(color: AppColor.NotificationTextcolor),
                          children: [
                            TextSpan(
                                text: "Login",
                                style: TextStyle(color: AppColor.TheamColor))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
