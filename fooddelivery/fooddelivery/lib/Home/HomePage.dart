import 'package:flutter/material.dart';
import 'package:fooddelivery/Models/Nearest_model.dart';
import 'package:fooddelivery/Models/Popular_model.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/Utils/app_theme.dart';
import 'package:fooddelivery/Wights/Nearest_wight.dart';
import 'package:fooddelivery/Wights/Popular_wight.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = "first";
  // bool click = false;
  int Myindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      Myindex = index;
    });
  }

  List<NearestModel> Nearest_list = [
    NearestModel(
        description: "westway",
        imageurl: "assets/ic_food.jpg",
        time: "20m",
        reting: "50%off"),
    NearestModel(
        description: "southway",
        imageurl: "assets/Rectangle 10.png",
        time: "25m",
        reting: ""),
    NearestModel(
        description: "northway",
        imageurl: "assets/Rectangle 9 (1).png",
        time: "15m",
        reting: "30%off"),
    NearestModel(
        description: "1",
        imageurl: "assets/Rectangle 10.png",
        time: "25m",
        reting: ""),
    NearestModel(
        description: "1",
        imageurl: "assets/Rectangle 10.png",
        time: "25m",
        reting: ""),
    NearestModel(
        description: "1",
        imageurl: "assets/Rectangle 10.png",
        time: "25m",
        reting: "20%off"),
    NearestModel(
        description: "1",
        imageurl: "assets/Rectangle 10.png",
        time: "25m",
        reting: ""),
  ];
  List<Popularmodel> Popular_list = [
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: "3.25"),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: ""),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: "3.25"),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: "3.25"),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: ""),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: "3.25"),
    Popularmodel(
        id: "1", imageurl: "assets/ic_food.jpg", time: "20", reting: "3.25"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: _widgetOptions.elementAt(Myindex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    "assets/home.png",
                  ),
                  color: AppColor.TheamColor,
                  height: 25,
                  width: 25,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    "assets/ic_search.png",
                  ),
                  color: AppColor.TheamColor,
                  height: 25,
                  width: 25,
                ),
                label: "search"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/Group 44.png"),
                  color: AppColor.TheamColor,
                  height: 25,
                  width: 25,
                  // color: AppColor.NotificationText2color,
                ),
                label: "save"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/Group 45.png"),
                  color: AppColor.TheamColor,
                  height: 25,
                  width: 25,
                ),
                label: "profile"),
          ],
          currentIndex: Myindex,
          selectedItemColor:AppTheme.themeData(context).disabledColor,
          onTap: _onItemTapped,
        ),
        backgroundColor: AppTheme.themeData(context).bottomAppBarColor,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Expanded(
          child: Column(children: [
            Container(
              height: 210,
              child: Stack(
                children: [
                  Image(image: AssetImage("assets/Vector 3 (4).png")),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 23.0, right: 23.0, top: 30, bottom: 0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: AppTheme.themeData(context).backgroundColor,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10.0),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/ic_search.png',
                                  // width: 7,
                                  scale: 9,
                                  // height: 7,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                              hintText: " Find your taste"))),
                ],
              ),
            ),
            Container(
              height: 48,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image(
                      image: AssetImage(
                        "assets/ic_delivery_location.png",
                      ),
                      height: 29,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 105, top: 7),
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text("242 ST Marks Eve, Finland"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image(image: AssetImage("assets/ion_options-outline.png"))
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
                height: 70,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 'first';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: selected == 'first'
                                    ? AppTheme.themeData(context).primaryColor
                                    : AppTheme.themeData(context).backgroundColor),
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage("assets/food main.png"),
                              color: AppTheme.themeData(context).canvasColor,
                            ),
                          ),
                        ),
                        Text("All")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 'Second';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: selected == 'Second'
                                      ? AppTheme.themeData(context).primaryColor
                                    : AppTheme.themeData(context).backgroundColor),
                            height: 50,
                            width: 50,
                            child: Image(
                                image:
                                    AssetImage("assets/ion_pizza-outline.png")),
                          ),
                        ),
                        Text("Pizza")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 'Three';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: selected == 'Three'
                                     ? AppTheme.themeData(context).primaryColor
                                    : AppTheme.themeData(context).backgroundColor),
                            height: 50,
                            width: 50,
                            child: Image(
                                image: AssetImage("assets/Vector (2).png")),
                          ),
                        ),
                        Text("Beverages")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 'four';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: selected == 'four'
                                     ? AppTheme.themeData(context).primaryColor
                                    : AppTheme.themeData(context).backgroundColor),
                            height: 50,
                            width: 50,
                            child: Image(
                                image:
                                    AssetImage("assets/fe_rice-cracker.png")),
                          ),
                        ),
                        Text("Asian")
                      ],
                    ),
                  ),
                ])),
            Row(children: [
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 7, top: 7),
                    child: Text(
                      "Nearest Restaurents",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              height: 150,
              width: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Nearest_list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Nearestwight(Nearest: Nearest_list[index]));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Row(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, bottom: 7, top: 7),
                      child: Text(
                        "Popular Restaurents",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              width: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Nearest_list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Popularwight(Popular: Popular_list[index]));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ]),
        ))));
  }
}
