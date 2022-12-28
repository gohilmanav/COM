import 'package:flutter/material.dart';
import 'package:fooddelivery/MapPage/Mappage.dart';
import 'package:fooddelivery/Menu/Manu.dart';
import 'package:fooddelivery/Models/Cart_model.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/Utils/app_theme.dart';
import 'package:fooddelivery/Wights/cart_wight.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<cartmodel> Cartlist = [
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
    cartmodel(
        id: "id",
        imageurl: "assets/Rectangle 9 (2).png",
        Name: "Burger with some",
        total: "\$200"),
  ];

  int Myindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      Myindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        selectedItemColor:  AppTheme.themeData(context).disabledColor,
        onTap: _onItemTapped,
      ),
      backgroundColor:  AppTheme.themeData(context).bottomAppBarColor,
      body: SafeArea(
          child: Column(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  AppTheme.themeData(context).backgroundColor,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image(
                        image: AssetImage(
                          "assets/ic_back.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Container(
                    height: 30,
                    width: 60,
                    child: Text(
                      "Cart",
                      style: TextStyle(
                          color:  AppTheme.themeData(context).cardColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    )),
              )
            ])),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Container(
                height: 111,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:AppTheme.themeData(context).primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage(
                          "assets/ic_delivery_location.png",
                        ),
                        color:  AppTheme.themeData(context).backgroundColor,
                        height: 30,
                        width: 30,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 27.0),
                  child: Text(
                    "Deliver to",
                    style: TextStyle(
                        color:  AppTheme.themeData(context).backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38, top: 40),
                child: Text(
                  "242 ST Marks Eve,\n Finland ",
                  style: TextStyle(
                      color:  AppTheme.themeData(context).backgroundColor, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220.0, top: 36),
                child: Image(image: AssetImage("assets/Vector (5).png")),
              )
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 146),
              child: Image(
                image: AssetImage("assets/Vector 3 (5).png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 360, left: 55),
              child: GestureDetector(
                onTap: () async {
                  return showDialog<void>(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          elevation: 20,
                          backgroundColor:  AppTheme.themeData(context).backgroundColor,
                          actions: [
                            Center(
                                child: Image(
                              image: AssetImage("assets/smiling 1.png"),
                              height: 150,
                              width: 150,
                            )),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 58.0,
                              ),
                              child: Text(
                                "Thanks for Buying \n    Food with Us!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:  AppTheme.themeData(context).focusColor,),
                              ),
                            ),
                            Center(
                                child: Text(
                              "Your food will arrive in 3 min.",
                              style: TextStyle(
                                  fontSize: 12, color:  AppTheme.themeData(context).hintColor,),
                            )),
                            Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Mappage()),
                                      );
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color:  AppTheme.themeData(context).disabledColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Track your order",
                                          style: TextStyle(
                                              color:  AppTheme.themeData(context).backgroundColor,),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 78.0),
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  AppTheme.themeData(context).backgroundColor,),
                    child: Center(
                        child: Text(
                      "Continue",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 246, left: 35),
                  child: Text(
                    "Item total",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0, left: 85),
                  child: Text(
                    "\$20.49",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 300, left: 35),
                  child: Text(
                    "Discount",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300.0, left: 85),
                  child: Text(
                    "\$-10",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 350, left: 36),
                  child: Text(
                    "Tax",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 350.0, left: 115),
                  child: Text(
                    "\$2",
                    style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 400, left: 35),
                  child: Text(
                    "Total",
                    style: TextStyle(
                        color:  AppTheme.themeData(context).cardColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400.0, left: 95),
                  child: Text(
                    "\$12.49",
                    style: TextStyle(
                        color:  AppTheme.themeData(context).cardColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              height: 192,
              width: 320,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                itemCount: Cartlist.length,
                itemBuilder: (context, index) {
                  return CartWight(cart: Cartlist[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ],
        )
      ])),
    );
  }
}
