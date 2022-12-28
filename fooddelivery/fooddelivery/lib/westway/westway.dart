import 'package:flutter/material.dart';
import 'package:fooddelivery/Home/HomePage.dart';
import 'package:fooddelivery/Menu/Manu.dart';
import 'package:fooddelivery/Models/Westway_model.dart';
import 'package:fooddelivery/Utils/app_theme.dart';
import 'package:fooddelivery/Wights/Westway_wight.dart';

class westway extends StatefulWidget {
  const westway({Key? key}) : super(key: key);

  @override
  State<westway> createState() => _westwayState();
}

List<Westwaymodel> westwaylist = [
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: "20%off"),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: "50%off"),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: "free"),
  Westwaymodel(
      id: "1",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: ""),
];

class _westwayState extends State<westway> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 4,
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image(
                            image: AssetImage("assets/Vector 3 (2).png"),
                          ),
            
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 60),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:AppTheme.themeData(context).backgroundColor),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomePage()),
                                        );
                                      },
                                      child: Image(
                                        image: AssetImage(
                                          "assets/ic_back.png",
                                        ),
                                        height: 50,
                                        width: 50,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: AppTheme.themeData(context).backgroundColor),
                                    child: Image(
                                      image: AssetImage(
                                        "assets/Vector (3).png",
                                      ),
                                      height: 50,
                                      width: 50,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color:AppTheme.themeData(context).backgroundColor),
                                    child: Image(
                                      image: AssetImage(
                                        "assets/feather_share.png",
                                      ),
                                      height: 50,
                                      width: 50,
                                    )),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0.0,
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 70.0, bottom: 5),
                                  child: Text(
                                    "Westway",
                                    style: TextStyle(
                                        color: AppTheme.themeData(context).cardColor, fontSize: 30),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Menu()),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text(
                                      "More info",
                                      style: TextStyle(color: AppTheme.themeData(context).primaryColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("assets/ic_star.png"),
                                height: 16,
                                width: 16,
                              ),
                            ),
                            Text(
                              "4.6  ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage(
                                  "assets/ic_cal_time.png",
                                ),
                                height: 16,
                                width: 16,
                              ),
                            ),
                            Text(
                              "15 min",
                              style: TextStyle(
                                  color: AppTheme.themeData(context).canvasColor,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          child: Text(
                            "Healthy eating means eating a variety \nof foods that give you the nutrients you\nneed to maintain your health,feel good,\nand have energy.",
                            style: TextStyle(
                                color: AppTheme.themeData(context).canvasColor,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      // AlertDialog(
                      //   title: Center(
                      //     child: Text(
                      //       "Sucessfully \nadded to cart",
                      //       style: TextStyle(fontSize: 19,
                      //         color: Colors.greenAccent,
                      //       ),
                      //     ),
                      //   ),
                      //   actions: [
                      //     Center(
                      //         child: Image(
                      //       image: AssetImage("assets/shopping-cart 1.png"),
                      //       height: 150,
                      //       width: 150,
                      //     )),
                      //     Center(
                      //       child: TextButton(
                      //           onPressed: () {
                      //             Navigator.of(context).pop();
                      //           },
                      //           child: Text("Check out now")),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      TabBar(
                        isScrollable: true,
                        labelColor: AppTheme.themeData(context).cardColor,
                        indicatorColor: AppTheme.themeData(context).primaryColor,
                        splashBorderRadius: BorderRadius.circular(15),
                        tabs: [
                          (Tab(
                            text: "Bestselles",
                          )),
                          Tab(
                            text: "veg",
                          ),
                          Tab(
                            text: "non-veg",
                          ),
                          Tab(
                            text: "beveg",
                          )
                        ],
                      ),
                      Container(
                       // height: 170,
                        width: 320,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          primary: false,
                          shrinkWrap: true,
                          itemCount: westwaylist.length,
                          itemBuilder: (context, index) {
                            return Westwaywight(westway: westwaylist[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            )));
  }
}
