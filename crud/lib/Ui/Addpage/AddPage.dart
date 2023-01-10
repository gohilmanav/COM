import 'dart:convert';

import 'package:crud/Models/CardModel.dart';
import 'package:crud/Ui/Units/App_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _AddPageState extends State<AddPage> {
  late SharedPreferences sharedPreferences;
  TextEditingController nameController = new TextEditingController();
  TextEditingController numberController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();

  void onAdd() {
    // Navigator.of(context).pop(true);
  }
  //   void onAdd() {

  //   Navigator.of(context).pop(true);
  // @override
  // void initState() {
  //   super.initState();
  //   initalGetSaveData();
  // }

  // void initalGetSaveData() async {
  //   sharedPreferences = await SharedPreferences.getInstance();
  //   Map<String, dynamic> jsondatais =
  //       jsonDecode(sharedPreferences.getString('userdata')!);
  //   User user = User.formJson(jsondatais);
  //   if (jsondatais.isNotEmpty) {
  //     _name.value = TextEditingValue(text: user.name);
  //     _number.value = TextEditingValue(text: user.number);
  //     _age.value = TextEditingValue(text: user.age);
  //   }
  // }

  void  stordata() {
    User user =
        User(nameController.text, ageController.text, numberController.text);
    String userdata = jsonEncode(user);
    print(userdata);
    // SharedPreferences. setString('userdata', userdata);
  }

  var namecontrollar = TextEditingController();
  var NameValue = "no value";
  // @override
  // void initState() {
  //   super.initState();
  //   getValue();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black54,
          Colors.blue,
        ])),
        height: MediaQuery.of(context).size.height,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.values[2],
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: Text(
                "ADD DETAIL",
                style: TextStyle(
                    color: AppColor.WhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0),
              child: TextField(
                controller: namecontrollar,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "name"),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0, top: 10),
              child: TextField(
                controller: numberController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Mobile Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0, top: 10),
              child: TextField(
                controller: ageController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Age"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(numberController.text);
                  print(ageController.text);
                  stordata();
                },
                child: Text("save data")),
            TextButton(
              // onPressed: () => context,
              onPressed: () async {
                sharedPreferences.remove('userdata');
                nameController.value = TextEditingValue(text: '');
                numberController.value = TextEditingValue(text: '');
                ageController.value = TextEditingValue(text: '');
              },

              // async {
              //   // sharedPreferences.remove('userdata');
              //   // _name.value = TextEditingValue(text: '');
              //   // _number.value = TextEditingValue(text: '');
              //   // _age.value = TextEditingValue(text: '');
              // },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Colors.greenAccent,
                        Colors.indigoAccent,
                      ],
                    )),
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            //Text(NameValue),
          ],
        ),
      )),
    ));
  }
}
