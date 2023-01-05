import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/main.dart';
import 'package:exam2/ui/Loginpage/Loginpage.dart';
import 'package:exam2/ui/Otppage/OtpPage.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

GlobalKey<FormState> formKey = GlobalKey<FormState>();
final email = TextEditingController();
final phone = TextEditingController();
bool p_isObscure = true;
bool pc_isObscure = false;
bool byEmail = true;
bool validate = false;

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Form(
        key: formKey,
        child: Column(children: [
          //SizedBox(height: 10),

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
            height: 23,
          ),
          Text("Forgot Password ",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColor.NotificationTextcolor)),
          SizedBox(
            height: 30,
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
                height: 37,
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
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                height: 37,
                width: 150,
                decoration: BoxDecoration(
                  color: byEmail
                      ? AppColor.inputfieldbackgroundcolor
                      : Colors.deepOrange,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 51,
          ),

          if (byEmail)
            // Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            //  Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Color(0xfff2f3f7),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(width: 0, style: BorderStyle.none)),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Image.asset(
                      'assets/ic_email.png',
                      scale: 7,
                    ),
                  ),
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

          if (!byEmail)
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: TextFormField(
                controller: phone,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Image.asset(
                        'assets/ic_phone_number.png',
                        scale: 7,
                      ),
                    ),
                    hintText: 'Phone Number'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter number";
                  }
                  return null;
                },
              ),
            ),
          SizedBox(height: 58),
          Container(
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
              borderRadius: BorderRadius.circular(50),
            ),
            height: 48.5,
            width: 305,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage()),
                  ).then((value) {
                    formKey.currentState?.reset();
                    print(
                      "Success",
                    );
                    email.clear();

                  });
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: (StadiumBorder()),
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              child: Text('Submit'),
            ),
          ),

          GestureDetector(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 235),
              child: GestureDetector(
                onTap: () {
                 
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: RichText(
                    text: TextSpan(
                        text: "Remember Password ? ",
                        style: TextStyle(
                            color: AppColor.NotificationTextcolor,
                            fontSize: 16),
                        children: <TextSpan>[
                      TextSpan(
                        text: 'Login ',
                        style: TextStyle(
                            color: AppColor.TheamColor,
                            fontSize: 16,
                            decoration: TextDecoration.underline),
                      )
                    ])),
              ),
            )),
          ),
        ]),
      ))),
    );
  }
}
