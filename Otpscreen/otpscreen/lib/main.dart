import 'package:flutter/material.dart';
import 'package:otpscreen/OtpsSreen/OtpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(),
      home:  OtpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
