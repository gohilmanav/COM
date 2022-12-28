import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/ui/base/base.dart';
import 'package:user1/ui/home/homescreen.dart';

class Refer_earn extends StatefulWidget {
  const Refer_earn({Key? key}) : super(key: key);

  @override
  State<Refer_earn> createState() => _Refer_earnState();
}

class _Refer_earnState extends State<Refer_earn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.TheamColor,
          child: Image(
            image: AssetImage(
              "assets/ic_reward.png",
            ),
            height: 45,
            width: 45,
            color: Colors.blue,
          ),hoverColor: Colors.pink,
          tooltip: "Like",
          autofocus: true,
          focusElevation: 1, //Text(
          //   "Tap  earn",
          //   textAlign: TextAlign.center,
          // ),foregroundColor: Colors.black87,
        ),
        backgroundColor: AppColor.inputfieldbackgroundcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.WhiteColor,
          actions: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => base()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Image(
                          image: AssetImage(
                        "assets/ic_back.png",
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Text("Refer & Erne",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                        padding: EdgeInsets.only(left: 320),
                        child: Image.asset("assets/home_new.png")),
                  ),
                )
              ],
            )
          ],
        ),
        body: SafeArea(
            child: Column(children: [
          Container(
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image(
                  image: AssetImage("assets/refer.jpeg"),
                  fit: BoxFit.fitWidth,
                )

                //TextField(
                //     decoration: InputDecoration(
                //         filled: true,
                //         fillColor: AppColor.WhiteColor,
                //         contentPadding:
                //             EdgeInsets.symmetric(vertical: 10.0),
                //         prefixIcon: Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Image.asset(
                //             'assets/ic_search.png',
                //             width: 3,
                //             height: 3,
                //             fit: BoxFit.fill,
                //           ),
                //         ),
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(25),
                //             borderSide: BorderSide.none),
                //         labelText: "Search item")),
                ),
          ),
        ])));
  }
}
