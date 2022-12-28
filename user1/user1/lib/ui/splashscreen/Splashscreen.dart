import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user1/ui/loginpage/login_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _UserState();
}

class _UserState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/ic_bg.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              Container(
                  child: Center(
                child: Image.asset(
                  "assets/ic_logo_white.png",
                  fit: BoxFit.contain,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

//     );
//   }
}
