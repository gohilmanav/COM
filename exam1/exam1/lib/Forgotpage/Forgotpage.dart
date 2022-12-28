import 'package:exam1/Utils/app_color.dart';
import 'package:exam1/login_page/login.dart';
import 'package:flutter/material.dart';

class Forgotpage extends StatefulWidget {
  const Forgotpage({Key? key}) : super(key: key);

  @override
  State<Forgotpage> createState() => _Userstate();
}

class _Userstate extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appbackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/ic_logo_icon.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: AppColor.NotificationText2color,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 15, bottom: 0),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: AppColor.WhiteColor,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 10.0),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'assets/ic_email.png',
                                scale: 6, // width: 5,
                                // height: 5,
                                // fit: BoxFit.fill,
                              ),
                            ),
                            hintText: "   Email Address"))),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 45,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Forgotpage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: (RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                      textStyle: TextStyle(fontSize: 15),
                    ),
                    child: Text(
                      'Reset Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 245,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()),
                    );
                  },
                  child: Center(
                      child: RichText(
                          text: TextSpan(
                              text: "Remember Password?",
                              style:
                                  TextStyle(color:AppColor.NotificationTextcolor, fontSize: 16),
                              children: <TextSpan>[
                        TextSpan(
                          text: 'Login ',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.deepOrangeAccent,
                              fontSize: 16),
                        )
                      ]))),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
