import 'package:flutter/material.dart';
import 'package:fooddelivery/Cart/Cart.dart';
import 'package:fooddelivery/Models/Menu_model.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/Utils/app_theme.dart';
import 'package:fooddelivery/Wights/Menu_wight.dart';
import 'package:fooddelivery/westway/westway.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

List<Menumodel> Menulist = [
  Menumodel(
      id: "price:4531",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: "20%off"),
  Menumodel(
      id: "price:1531",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Burger with some",
      reting: "50%off"),
  Menumodel(
      id: "price:4531",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:145",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Burger with some",
      reting: ""),
  Menumodel(
       id: "price:4531",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
       id: "price:531",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
       id: "price:351",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:571",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
 id: "price:1533",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: "30%off"),
  Menumodel(
      id: "price:261",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:1000",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: "10%off"),
  Menumodel(
      id: "price:701",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:201",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: "25%off"),
  Menumodel(
     id: "price:301",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:211",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "25min",
      reting: "22%off"),
  Menumodel(
      id: "price:185",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:175",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
      id: "price:130",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
  Menumodel(
       id: "price:125",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: "10%off"),
  Menumodel(
     id: "price:100",
      imageurl: "assets/Rectangle 9 (2).png",
      time: "Vegitable Salad",
      reting: ""),
];
// Future<void> _showMyDialog() {
// ignore: todo
//   // TODO: implement _showMyDialog
//   throw UnimplementedError();
// }

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppTheme.themeData(context).indicatorColor,
        body: DefaultTabController(
      length: 4,
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => westway()),
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppTheme.themeData(context).backgroundColor),
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
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Westway",
                  style: TextStyle(color: AppColor.NotificationText2color),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 7),
                child: Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 140,
              ),
              Container(
                child: Image(
                  image: AssetImage(
                    "assets/ion_options-outline.png",
                  ),
                ),
              )
            ]),
          ),
          Container(
            child: TabBar(
              isScrollable: true,
              labelColor: AppTheme.themeData(context).cardColor,
              indicatorColor:AppTheme.themeData(context).primaryColor,
              padding: EdgeInsets.only(left: 30),
              splashBorderRadius: BorderRadius.circular(15),
              tabs: [
                (Tab(
                  child: Text(
                    "Bestselles",
                    style: TextStyle(fontSize: 15),
                  ),
                )),
                Tab(
                  child: Text(
                    "veg",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "non-veg",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "beveg",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            width: 320,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: Menulist.length,
              itemBuilder: (context, index) {
                return MenuWight(Menu: Menulist[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Container(
            height: 60,
            width: 370,
            color: AppTheme.themeData(context).focusColor,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      child: Text(
                    "3 Item",
                    style: TextStyle(
                        color: AppTheme.themeData(context).backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: Container(
                    child: Text(
                      "View Cart",
                      style: TextStyle(
                          color: AppTheme.themeData(context).backgroundColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, bottom: 10),
                  child: GestureDetector(
                      onTap: () async {
                        return showDialog<void>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return AlertDialog(elevation: 20,
                                backgroundColor:AppTheme.themeData(context).backgroundColor,
                                
                                actions: [
                                  Center(
                                      child: Image(
                                    image: AssetImage(
                                        "assets/shopping-cart 1.png"),
                                    height: 150,
                                    width: 150,
                                  )),
                                   Center(
                                  child: Text(
                                    "    Sucessfully \nadded to cart",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: AppTheme.themeData(context).focusColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                  Center(
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: GestureDetector(onTap: () {
                                         Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cart(),
                                    ));
                                        },
                                          child: Container(height: 40,width: 120,
                                            decoration: BoxDecoration(color: AppTheme.themeData(context).disabledColor,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Check out now",
                                                style: TextStyle(color: AppTheme.themeData(context).backgroundColor),
                                              ),
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Container(
                        height: 35,
                        width: 80,
                        child: Center(child: Text("\$ 20.5")),
                        decoration: BoxDecoration(
                          color:  AppTheme.themeData(context).backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ]),
      )),
    ));
  }
}
