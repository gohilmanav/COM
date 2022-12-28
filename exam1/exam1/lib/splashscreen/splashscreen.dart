import 'dart:async';

import 'package:exam1/login_page/login.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _Userstate();
}

class _Userstate extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const Loginpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/ic_background.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 350),
                child: Center(
                    child: Image.asset(
                  "assets/ic_logo_text.png",
                  height: 80,
                 // width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                )),
              ),
              Padding(
                padding: const EdgeInsets. only(top: 300),
                child: Center(
                  child: Image.asset(
                    "assets/ic_delivery_amico.png",
                    
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
