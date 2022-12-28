import 'package:exam1/Utils/app_color.dart';
import 'package:exam1/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: AppColor.appbackgroundColor,
     ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255)),
      
      home: const splashscreen(),

      debugShowCheckedModeBanner: false,
      
      
        
      );
     
    
  }
}



