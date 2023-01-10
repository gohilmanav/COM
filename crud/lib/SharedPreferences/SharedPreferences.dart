import 'dart:convert';

import 'package:crud/Models/CardModel.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefs = SharedPreferences.getInstance();
void stordata() {
  User user = User(_name.text, _age.text, _number.text);
  String userdata = jsonEncode(user);
  print(userdata);
}

class _number {
  static String text = "number";
}

class _name {
  static String text = "name";
}

class _age {
  static String text = 'age';
}

const String KEYNAME = "Name";
var NameValue = "no value";
final scaffoldKey = GlobalKey<ScaffoldState>();

addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
}

addIntToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt('intValue', 123);
}

getStringValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  String stringValue = prefs.getString.toString();
  return stringValue;
}

getIntValuesSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  int intValue = prefs.getInt('intValue') ?? 0;
  return intValue;
}

// removeValues() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   SharedPreferences.remove(userdata);
 
// }
