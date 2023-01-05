import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/ui/Forgotpage/Forgorpage.dart';
import 'package:exam2/ui/Loginpage/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  //GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/ic_back.png",
                      scale: 4,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "OTP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 168),
              child: Center(
                  child: Image.asset(
                "assets/ic_logo_icon.png",
                scale: 1.1,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Please enter your verification code here",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.3),
                )),
            SizedBox(
              height: 30,
            ),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              filled: true,
              fillColor: AppColor.inputfieldbackgroundcolor,
              borderRadius: BorderRadius.circular(50),

              showFieldAsBox: true,

              onCodeChanged: (String code) {},

              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 47,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColor.TheamColor),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Verify",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.WhiteColor,
                      fontSize: 14.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 195),
              child: GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "otp Resend",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Haven't received it yet ? ",
                        style: TextStyle(
                            color: AppColor.NotificationText2color,
                            fontSize: 17),
                        children: [
                      TextSpan(
                          text: "Re-Send",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColor.TheamColor,
                              fontSize: 17))
                    ])),
              ),
            )
          ],
        )),
      ),
    );
  }
}
