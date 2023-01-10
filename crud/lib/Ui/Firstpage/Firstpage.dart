import 'package:crud/Ui/Addpage/AddPage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({
    Key? key,
  }) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

// late SharedPreferences userdata;
// String temp = '';
// _delete_Shared_Preferences() async {
//   userdata = await SharedPreferences.getInstance();
//   userdata.remove("stordata");
// }

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          "Card List",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
            size: 20,
          ),
          onPressed: () {
           Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AddPage(),
                                ));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.black45,
            ),
            onPressed: () {
             
            },
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Transform.translate(
            offset: Offset.fromDirection(0, 15),
            child: Container(
              height: 210,
              // child: CardView(widget.card),
            ),
          ),
        ),
      ),
    );
    // Scaffold(
    //   backgroundColor: AppColor.pholder_background,
    //   body: SafeArea(
    //     child: Card(
    //       color: Colors.blue,
    //       elevation: 8.0,
    //       child: Container(
    //         color: AppColor.pholder_background,
    //         padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    //         height: 200,
    //         width: MediaQuery.of(context).size.width,
    //         child: Container(
    //           color: Colors.grey,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       const Text(
    //                         "       Name",
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Mobile Number",
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       ),
    //                       Text(
    //                         "       age",
    //                         style: TextStyle(
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     width: 15,
    //                   ),
    //                   Column(
    //                     children: [
    //                       ElevatedButton(
    //                           onPressed: () {
    //                             Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                   builder: (context) => const UpdatePage()),
    //                             );
    //                           },
    //                           child: Text("EDIT")),
    //                       ElevatedButton(
    //                         onPressed: () {

    //                         },
    //                         //  _delete_Shared_Preferences(),
    //                         child: Text("DELET"),
    //                       )
    //                     ],
    //                   ),
    //                 ],
    //               ),

    //               // SizedBox(width: 32),
    //               // Text(
    //               //   'Mobile Number',
    //               //   style: TextStyle(
    //               //     fontSize: 16,
    //               //     fontWeight: FontWeight.bold,
    //               //   ),
    //               // ),
    //               // SizedBox(height: 4),
    //               // Row(
    //               //     //   children: [
    //               //     //     ElevatedButton(
    //               //     //         onPressed: () => context, child: Text("update"))
    //               //     //   ],
    //               //     ),
    //               // Text(
    //               //   "age",
    //               //   style: TextStyle(
    //               //     fontSize: 16,
    //               //     fontWeight: FontWeight.bold,
    //               //   ),
    //               // ),

    //               // SharedPreferences.remove('userdata');
    //               // _name.value = TextEditingValue(text: '');
    //               // _number.value = TextEditingValue(text: '');
    //               // _age.value = TextEditingValue(text: '');
    //               // // var prefs = await SharedPreferences.getInstance();
    //               // // prefs.setString(KEYNAME, namecontrollar.toString());
    //               // Row(
    //               //   mainAxisAlignment: MainAxisAlignment.center,
    //               //   children: [
    //               //     ElevatedButton(
    //               //         onPressed: () {
    //               //           Navigator.push(
    //               //             context,
    //               //             MaterialPageRoute(
    //               //                 builder: (context) => const UpdatePage()),
    //               //           );
    //               //         },
    //               //         child: Text("EDIT")),
    //               //     SizedBox(
    //               //       width: 20,
    //               //     ),
    //               //     ElevatedButton(
    //               //       onPressed: () => context,
    //               //       //  _delete_Shared_Preferences(),
    //               //       child: Text("DELET"),
    //               //     )
    //               //   ],
    //               // ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class CardProvider {}
