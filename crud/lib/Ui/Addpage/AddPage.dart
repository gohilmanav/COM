import 'dart:convert';

import 'package:crud/Models/CardModel.dart';
import 'package:crud/Ui/Firstpage/Firstpage.dart';
import 'package:crud/Ui/Units/App_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _AddPageState extends State<AddPage> {
  late SharedPreferences sharedPreferences;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  TextEditingController nameController = new TextEditingController();
  TextEditingController numberController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();

  void onAdd() {
    Navigator.of(context).pop(true);
  }
  //   void onAdd() {

  //   Navigator.of(context).pop(true);
  // @override
  // void initState() {
  //   super.initState();
  //   initalGetSaveData();
  // }

  void stordata() {
    User user =
        User(nameController.text, ageController.text, numberController.text);
    String userdata = jsonEncode(user);
    print(userdata);

    //dynamic SharedPreferences prefs setString.('userdata' userdata);
  }

  var namecontrollar = TextEditingController();
  var NameValue = "no value";
  @override
  void initState() {
    super.initState();
  }

  // void clear() {
  //   User user =
  //       User(namecontrollar., ageController.text, numberController.text);
  //   String userdata = jsonEncode(User);
  //   print(userdata);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/download (1).jpeg"), fit: BoxFit.fill)
            // color:Colors.green
            //     gradient: LinearGradient(colors: [
            //   Colors.black,
            //   Colors.blue.shade900,
            //   Colors.grey.shade900,
            // ]
            // )
            ),
        height: MediaQuery.of(context).size.height,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.values[2],
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: Card(
                  color: AppColor.WhiteColor,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                            color: AppColor.BlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              filled: true,
                              fillColor: AppColor.inputfieldbackgroundcolor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter Name"),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: TextFormField(
                          controller: numberController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              filled: true,
                              fillColor: AppColor.inputfieldbackgroundcolor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter Mobile Number"),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, right: 18),
                        child: TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            filled: true,
                            fillColor: AppColor.inputfieldbackgroundcolor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none),
                            hintText: "Enter Age",
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                print(nameController.text);
                                print(numberController.text);
                                print(ageController.text);
                               stordata();
                              },
                              child: Text("save data")),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              // onPressed: () => context,
                              onPressed: ()  {
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Firstpage(),
                                ));
                              
                              },
                              child: Text("View")),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       print(nameController.text);
            //       print(numberController.text);
            //       print(ageController.text);
            //       stordata();
            //     },
            //     child: Text("save data")),
            // TextButton(
            //   // onPressed: () => context,
            //   onPressed: () async {
            //     sharedPreferences.remove('userdata');
            //     nameController.value = TextEditingValue(text: '');
            //     numberController.value = TextEditingValue(text: '');
            //     ageController.value = TextEditingValue(text: '');
            //   },

            //   child: Container(
            //     height: 35,
            //     width: 85,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         gradient: LinearGradient(
            //           colors: [
            //             Colors.greenAccent,
            //             Colors.indigoAccent,
            //           ],
            //         )),
            //     child: Center(
            //         child: Text(
            //       "Submit",
            //       style: TextStyle(
            //           color: Colors.white, fontWeight: FontWeight.bold),
            //     )),
            //   ),
            // ),
            //Text(NameValue),
          ],
        ),
      )),
    ));
  }
}
