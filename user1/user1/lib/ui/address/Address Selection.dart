import 'package:flutter/material.dart';
import 'package:user1/ui/base/base.dart';
import 'package:user1/ui/loginpage/login_page.dart';

class AddressSelection extends StatefulWidget {
  const AddressSelection({Key? key}) : super(key: key);

  @override
  State<AddressSelection> createState() => _UserState();
}

class _UserState extends State<AddressSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(

        //   leading: ImageIcon(
        //     AssetImage('assets/ic_back.png'),
        //     color: Colors.black,

        //   ),
        //   backgroundColor: Color.fromARGB(255, 247, 246, 248),
        //   title: Text(
        //     'AddressSelection',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
        body: SafeArea(
            child: Column(children: [
      Expanded(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              padding: EdgeInsets.only(top: 0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              icon: Image.asset(
                "assets/ic_back.png",
                height: 50,
                width: 50,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 40, bottom: 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xfff2f3f7),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/ic_delivery_location.png',
                    width: 2,
                    height: 2,
                    fit: BoxFit.fill,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )),
                labelText: 'Enter your Address',
              ),
            ),
          ),
          SizedBox(height: 26),
          Center(
            child: Text(
              "OR",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
            width: 320,
            height: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const base()),
                );
              },

              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/ic_branch_selection_location.png',
                        color: Color(0xfff2f3f7),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Text('search your location')
                  ],
                ),
              ),

              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: (StadiumBorder()),
                  textStyle: TextStyle(
                    fontSize: 15,
                  )),

              //  child: Text('User current location'),
            ),
          ),
          //  Text('User current location'),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/ic_address_branch_selection.png',
            fit: BoxFit.fill,
            width: 300,
            alignment: Alignment.bottomCenter,
          ),
        ],
      )))
    ])));
  }
}
