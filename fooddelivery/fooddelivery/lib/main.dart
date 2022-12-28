import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/splashscreen/splashscreen.dart';

void main() { WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true
        
      ),
      home: const splashscreen(),
       debugShowCheckedModeBanner: false,

    );
  }
}

