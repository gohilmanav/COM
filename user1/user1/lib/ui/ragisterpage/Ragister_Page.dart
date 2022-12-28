import 'package:flutter/material.dart';
import 'package:user1/ui/loginpage/login_page.dart';

class RagisterPage extends StatefulWidget {
  const RagisterPage({Key? key}) : super(key: key);

  @override
  State<RagisterPage> createState() => _UserState();
}

class _UserState extends State<RagisterPage> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 1),
                child: Center(
                  child: Image.asset(
                    "assets/ic_logo_icon.png",
                    height: 125,
                    width: 125,
                  ),
                ),
              ),
              Text("Sign Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              IntrinsicWidth(
                  child: Stack(children: [
                ClipOval(
                  child: CircleAvatar(
                    radius: 45,
                    child: Image.asset("assets/dummy.jpeg"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Image.asset(
                  'assets/ic_edit_icon.png',
                  height: 20,
                  width: 20,
                )
              ])),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5, bottom: 5),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
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
                    labelText: 'First Name',
                    hintText: 'First Name',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
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
                    labelText: 'Last Name',
                    hintText: 'Last Name',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
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
                    labelText: 'Email Address',
                    hintText: 'Email Address',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/ic_phone_number.png',
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
                    labelText: 'Phone Number',
                    hintText: 'Phone Number',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/ic_lock.png',
                        width: 2,
                        height: 2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/ic_eye_close.png',
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
                    labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/ic_lock.png',
                        width: 2,
                        height: 2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        'assets/ic_eye_close.png',
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
                    labelText: 'Confirm Password',
                    hintText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfff2f3f7),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      // child:
                      // Image.asset(
                      //   'assets/Lock1.png',
                      //   width: 2,
                      //   height: 2,
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        )),
                    labelText: 'Refer Code (Optional)',
                    hintText: 'Refer Code',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5, top: 0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      checkbox = value!;
                                    });
                                    Border.all(color: Colors.deepOrange);
                                  },
                                  side: BorderSide(color: Colors.deepOrange),
                                ),
                                Text('I agree'),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            }),
                            child: Padding(
                              padding: EdgeInsets.only(left: 100, top: 15),
                              //alignment: Alignment.topRight,

                              child: Text('Terms and Condition',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          //fontFamily: KSMFontFamily.robotoRgular,
                                          color: Colors.deepOrange)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (() {}),
                            child: Padding(
                              padding: EdgeInsets.only(left: 235, top: 15),
                              //alignment: Alignment.topRight,
                              child: Text('&',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          //fontFamily: KSMFontFamily.robotoRgular,
                                          color: Color.fromARGB(255, 0, 0, 0))),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            }),
                            child: Padding(
                              padding: EdgeInsets.only(left: 250, top: 15),
                              //alignment: Alignment.topRight,
                              child: Text('Privacy Policy',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          //fontFamily: KSMFontFamily.robotoRgular,
                                          color: Colors.deepOrange)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 45,
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
              SizedBox(height: 20),
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
                            text: 'Alreaday have an account? ',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: <TextSpan>[
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 16),
                      )
                    ]))),
              ),
              SizedBox(height: 30)
            ]),
          ))
        ],
      )),
    );
  }
}
