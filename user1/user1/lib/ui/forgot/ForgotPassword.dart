// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/ui/loginpage/login_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _UserState();
}

bool p_isObscure = true;
bool pc_isObscure = false;
bool byEmail = true;
bool validate = false;

var onPressed;

class _UserState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    var visibility_off;
    var visibility;
    // var visibility;
    // var visibility_off;
    return Scaffold(
        backgroundColor: AppColor.EditProfileBackgroundColor,
        body: SafeArea(
            child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              //SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(top: 35),
                child: Center(
                  child: Image.asset(
                    "assets/ic_logo_icon.png",
                    height: 150,
                    width: 150,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  bottom: 40,
                ),
                child: Text("Forgot Password ",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppColor.TextColor)),
              ),
              SizedBox(
                height: 10,
              ),

              Row(children: [
                Padding(
                    padding: EdgeInsets.only(
                  right: 20,
                  left: 10,
                )),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      byEmail = true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: byEmail
                          ? Colors.deepOrange
                          : AppColor.inputfieldbackgroundcolor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Email ID',
                      style: TextStyle(),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      byEmail = false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: byEmail
                          ? AppColor.inputfieldbackgroundcolor
                          : Colors.deepOrange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Phone",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 35,
              ),

              if (byEmail)
                // Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                //  Padding(padding: EdgeInsets.all(10)),
                Container(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff2f3f7),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/ic_email.png',
                          height: 10,
                          width: 10,
                          fit: BoxFit.fill,
                        ),
                      ),
                      hintText: 'Email Addredd',
                    ),
                  ),
                ),

              if (!byEmail)
                Container(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xfff2f3f7),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/ic_phone_number.png',
                              height: 10,
                              width: 10,
                              fit: BoxFit.fill,
                            ),
                          ),
                          hintText: 'Phone Number'),
                    )),
              SizedBox(height: 70),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 50,
                width: 305,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: (StadiumBorder()),
                      textStyle: TextStyle(fontSize: 20)),
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Center(
                    child: RichText(
                        text: TextSpan(
                            text: "Remember Password ?",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: <TextSpan>[
                      TextSpan(
                        text: ' Login ',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 16),
                      )
                    ]))),
              ),
            ])),
          )
        ])));
  }
}
