// import 'dart:convert';

// import 'package:crud/Models/CardModel.dart';
// import 'package:crud/Ui/Addpage/AddPage.dart';
// import 'package:crud/Ui/Units/App_color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesdemo extends StatefulWidget {
//   const SharedPreferencesdemo({Key? key}) : super(key: key);

//   @override
//   State<SharedPreferencesdemo> createState() => _SharedPreferencesdemoState();
// }

// class _SharedPreferencesdemoState extends State<SharedPreferencesdemo> {
//   @override
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//   late Future<int> _counter;
//   late Future<String> _user;
//   TextEditingController nameController = new TextEditingController();
//   TextEditingController numberController = new TextEditingController();
//   TextEditingController ageController = new TextEditingController();
//   Future<void> _incrementCounter() async {
//     final SharedPreferences prefs = await _prefs;
//     final int counter = (prefs.getInt('counter') ?? 0) + 1;
//     final String User = (prefs.getString('count') ?? 0).toString();

//     setState(() {
//       _user = prefs.setString('counter', User).then((bool success) {
//         return User;
//       });
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _user = _prefs.then((SharedPreferences prefs) {
//       return prefs.getString('counter') ?? 'manav';
//     });
//   }

//   void stordata() {
//     User user =
//         User(nameController.text, ageController.text, numberController.text);
//     String userdata = jsonEncode(user);
//     print(userdata);

//     //dynamic SharedPreferences prefs setString.('userdata' userdata);
//   }

// // @override
// //   void initState() {
// //     super.initState();
// //     User = _prefs.then((SharedPreferences prefs) {
// //       return prefs.getString('counter') ?? 0;
// //     });
// //   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(''),
//       ),
//       body: Center(
//           child: Column(
//         children: [
//           FutureBuilder<String>(
//               future: _user,
//               builder: (BuildContext context, AsyncSnapshot<String> userdata) {
//                 switch (userdata.connectionState) {
//                   case ConnectionState.waiting:
//                     return const CircularProgressIndicator();
//                   default:
//                     if (userdata.hasError) {
//                       return Text('Error: ${userdata.error}');
//                     } else {
//                       return Text(
//                         'Button tapped ${userdata.data} time${userdata.data == 's'}.\n\n'
//                         'This should persist across restarts.',
//                       );
//                     }
//                 }
//               }),
//           TextFormField(
//             controller: nameController,
//             decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 15),
//                 filled: true,
//                 fillColor: AppColor.inputfieldbackgroundcolor,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide.none,
//                 ),
//                 hintText: "Enter Name"),
//             keyboardType: TextInputType.text,
//           ),
//           TextFormField(
//             controller: numberController,
//             decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 15),
//                 filled: true,
//                 fillColor: AppColor.inputfieldbackgroundcolor,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide.none,
//                 ),
//                 hintText: "Enter Mobile Number"),
//             keyboardType: TextInputType.number,
//           ),
//           TextFormField(
//             controller: ageController,
//             decoration: InputDecoration(
//               contentPadding: EdgeInsets.only(left: 15),
//               filled: true,
//               fillColor: AppColor.inputfieldbackgroundcolor,
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(25),
//                   borderSide: BorderSide.none),
//               hintText: "Enter Age",
//             ),
//             keyboardType: TextInputType.number,
//           ),
//         ],
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: stordata,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
      
//     );
//   }
// }
//  //   Navigator.push(
//         //       context,
//         //       MaterialPageRoute(
//         //         builder: (context) => AddPage(),
//         //       ));
//         // },