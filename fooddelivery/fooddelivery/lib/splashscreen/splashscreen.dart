import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/splashscreen2/splashscreen2.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _UserState();
}

class _UserState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => splashscreen2())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Align(alignment:Alignment.center, child: Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Image(image: AssetImage("assets/FOOD.png")),
        )),
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.center,
          child: Text(
            "No waiting for food",
            style: TextStyle(color: AppColor.TextColor,fontSize: 16),
          ),
        )
      ]),
    ));
  }
}
