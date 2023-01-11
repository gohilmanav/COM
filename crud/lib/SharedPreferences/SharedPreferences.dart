import 'dart:convert';

import 'package:crud/Models/CardModel.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefs = SharedPreferences.getInstance();
void userdata() {
  User user = User(_name.text, _number.text, _age.text);
  String userdata = jsonEncode(user);
  print(userdata);
}
 void clear() {
    // User clear = User();
    String userdata =jsonEncode(User);
    print(userdata);
  }




class _name {
  static String text = "name";
}

class _number {
  static String text = "number";
}

class _age {
  static String text = 'age';
}

const String KEYNAME = "Name";
var NameValue = "no value";
final scaffoldKey = GlobalKey<ScaffoldState>();
// addStringToSF()async{SharedPreferences prefs = await SharedPreferences.getInstance();
// prefs.reload('stringValue',)}
addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
  prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "123");
  prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "123");
}

getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs = await SharedPreferences.getInstance();
  prefs = await SharedPreferences.getInstance();

  String? stringValue = prefs.getString('stringvalue') ?? '';

  return stringValue;
}
//  pref = await SharedPreferences.getInstance();
// await prefs.remove(stordata);
 


//getIntValuesSF() async {}

// getIntValuesSF1() async {
//   int intValue = prefs.getInt('intValue') ?? 0;
//   return intValue;
// }

getIntValuesSF2() async {
 clear();
 return null;
 
}
