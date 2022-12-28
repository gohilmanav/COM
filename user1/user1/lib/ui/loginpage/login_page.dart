// ignore: unused_import
import 'package:getwidget/getwidget.dart';
import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/ui/address/Address%20Selection.dart';
import 'package:user1/ui/forgot/ForgotPassword.dart';
import 'package:user1/ui/ragisterpage/Ragister_Page.dart';

// ignore: implementation_imports

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _UserState();
}

class _UserState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                //SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Image.asset(
                      "assets/ic_logo_icon.png",
                      height: 150,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 60,
                  ),
                  child: Text("Log In",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: AppColor.TextColor)),
                ),

                //  SizedBox(height: .5),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    // textAlignVertical: TextAlignVertical.center,
                    // style: TextStyle(color: Colors.black),
                   
                    decoration: InputDecoration(
                       filled: true,
                       fillColor: AppColor.inputfieldbackgroundcolor,
                  
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                          
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/ic_email.png',
                         
                         // color: AppColor.,
                         height: 4,
                         width: 4,
                          fit: BoxFit.fill,
                          
                        ),
                      ),
                      
                      
                        hintText: ' Enter Email Id',
                        
                    ),
                    
                    
                  ),
                ),
                VerticalDivider(thickness: 1,color: Colors.black,),
                Stack(
                  children: [ Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.inputfieldbackgroundcolor,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/ic_lock.png',
                           height: 4,
                           width: 4,
                            fit: BoxFit.fill,
                          ),
                          
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        
                        hintText: 'Enter secure password',
                      ),
                    ),
                  ),],
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // color: Colors.deepOrange
                  ),
                  height: 50, width: 320,
                  // padding: const EdgeInsets.fromLTRB(160, 0, 160, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                        shape: (StadiumBorder()),
                        textStyle: TextStyle(fontSize: 20)),
                    child: Text('Login'),
                  ),

                  // Padding(padding: EdgeInsets.only(top: 20,),
                ),
                SizedBox(
                  height: 15,
                ),
                //           GestureDetector( onTap: (){
                //   Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => const   AddressSelection()),
                //           );
                // },
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // color: Colors.deepOrange
                  ),

                  height: 50,
                  width: 320,
//padding: const EdgeInsets.fromLTRB(160, 0, 160, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressSelection()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      
                        primary: Colors.white,
                        shape: (StadiumBorder()),
                        
                        textStyle: TextStyle(fontSize: 18)),
                    child: Text(
                      'continue as guest',
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                Text(
                  "Or Login With",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
                SizedBox(height: 15),
                Row(children: [
                  Padding(padding: EdgeInsets.only(right: 145)),
                  GestureDetector(
                    onTap: () {
                    
 

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: ClipRRect(
                      
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/facebook.png",
                        scale: 7,
                      ),
                    ),
                    
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RagisterPage()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/google.png",
                        scale: 7,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPassword()),
                    );
                  },
                  child: Text(
                    "Forgot Password? ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RagisterPage()),
                    );
                  },
                  child: Center(
                      child: RichText(
                          text: TextSpan(
                              text: "Don't have an account?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                        TextSpan(
                          text: ' Sing Up',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent, fontSize: 16),
                        )
                      ]))),
                ),
              ]),
            ))
          ]),
        ));
  }
}
