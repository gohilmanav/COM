import 'package:flutter/material.dart';

import 'package:user1/Utils/App_color.dart';
import 'package:user1/ui/base/base.dart';

class TopPicks2 extends StatefulWidget {
  const TopPicks2({Key? key}) : super(key: key);

  @override
  State<TopPicks2> createState() => _TopPicks2State();
}

class _TopPicks2State extends State<TopPicks2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text("Top Picks",
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
                    MaterialPageRoute(builder: (context) => base()),
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
          child: Column(
        children: [Container( child: Padding(
                padding:
                    const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.WhiteColor,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/ic_search.png',
                            width: 3,
                            height: 3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none),
                        labelText: "Search item")),
              ),
            ),])
      ));
    
  }
}