import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam2/Models/MyFavourite_model.dart';
import 'package:exam2/Models/SpacialCombo_model.dart';
import 'package:exam2/Models/TopPick_model.dart';
import 'package:exam2/Units/App_colors.dart';
import 'package:exam2/Widgets/MyFavourite_Widgets.dart';
import 'package:exam2/Widgets/SpacialCombo_Widget.dart';
import 'package:exam2/Widgets/TopPick_widget.dart';
import 'package:exam2/ui/Loginpage/Loginpage.dart';
import 'package:exam2/ui/MyProfile/MyProfile.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marquee/marquee.dart';
import 'package:sticky_float_button/sticky_float_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    //'https://cdn.pixabay.com/photo/2017/06/07/10/53/pizza-2380025_960_720.jpg',
    'https://images.pexels.com/photos/1292294/pexels-photo-1292294.jpeg',
    'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg',
    // 'https://cdn.pixabay.com/photo/2017/01/22/19/12/pizza-2000595_960_720.jpg',
    // 'https://cdn.pixabay.com/photo/2021/09/02/13/36/pizza-6593504_960_720.jpg',
    // 'https://cdn.pixabay.com/photo/2015/04/03/13/29/pizza-705061_960_720.jpg'
  ];
  List<SpacialsCombosModel> SpacialComboList = [
    SpacialsCombosModel(
        id: "1",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "15455.00"),
    SpacialsCombosModel(
        id: "2",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "1515.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "1105.00"),
    SpacialsCombosModel(
        id: "4",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "105.00"),
    SpacialsCombosModel(
        id: "3",
        imageUrl: "assets/Rectangle 9 (2).png",
        description: "Spacial Pizza's",
        price: "1105.00"),
  ];
  List<MyFavouriteModel> MyFavouriteList = [
    MyFavouriteModel(
        id: "1",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "15455.00"),
    MyFavouriteModel(
        id: "2",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "1515.00"),
    MyFavouriteModel(
        id: "3",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "1105.00"),
    MyFavouriteModel(
        id: "4",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "105.00"),
    MyFavouriteModel(
        id: "3",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "1105.00"),
    MyFavouriteModel(
        id: "4",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "105.00"),
    MyFavouriteModel(
        id: "3",
        imageUrl: "assets/red.png",
        description: "Spacial Pizza's",
        price: "1105.00"),
  ];
  List<toppicksmodel> top_picks_list = [
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
    toppicksmodel(
        id: "1",
        imageUrl: "assets/large-orange-square_1f7e7.png",
        description: "toppicks pizza's",
        price: "100"),
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      imgList.forEach((imageUrl) {
        precacheImage(AssetImage(imageUrl), context);
      });
    });
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          key: _key,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.WhiteColor,
            actions: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                        onTap: () {
                          _key.currentState?.openDrawer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/ic_menu.png',
                              height: 40,
                            ),
                          ),
                        )),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0, top: 5),
                          child: Container(
                            width: 200,
                            height: 25,
                            color: AppColor.WhiteColor,
                            child: Center(
                              child: Text(
                                'Delivery Address',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Container(
                            height: 26,
                            width: 210,
                            color: AppColor.WhiteColor,
                            child: Marquee(
                              text: 'hy manav add address hear ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: AppColor.BlackColor),
                              scrollAxis: Axis.horizontal, //scroll direction
                              crossAxisAlignment: CrossAxisAlignment.start,
                              blankSpace: 20.0,
                              velocity: 50.0, //speed
                              pauseAfterRound: Duration(seconds: 1),
                              startPadding: 10.0,
                              accelerationDuration: Duration(seconds: 1),
                              accelerationCurve: Curves.linear,
                              decelerationDuration: Duration(milliseconds: 500),
                              decelerationCurve: Curves.easeOut,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: "under maintenance",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIos: 1,
                            backgroundColor: Colors.deepOrange,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Image.asset(
                              'assets/ic_my_cart.png',
                              height: 35,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 25,
                    ),
                    child: CarouselSlider.builder(
                      itemCount: imgList.length,
                      options: CarouselOptions(
                        height: 220,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                  child: Image.network(imgList[index],
                                      fit: BoxFit.fill, width: 1000)),
                            ]));
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((url) {
                      int index = imgList.indexOf(url);
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          width: 13,
                          height: 13,
                          margin: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.WhiteColor),
                            shape: BoxShape.circle,
                            color: Page == index
                                ? AppColor.WhiteColor
                                : AppColor.TheamColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, bottom: 7, top: 7),
                            child: Text(
                              " Specials / Combos",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 85),
                          child: Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: SpacialComboList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child: SpacialsCombosWight(
                                spacial: SpacialComboList[index]));
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
                            padding: const EdgeInsets.only(
                                left: 25, bottom: 7, top: 7),
                            child: Text(
                              "  My Favourite",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 125),
                          child: Text(
                            'View all',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      scrollDirection: Axis.horizontal,
                      itemCount: SpacialComboList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            child:
                                MyFavouriteWidget(Fav: MyFavouriteList[index]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, bottom: 7, top: 7),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Picks",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.deepOrangeAccent,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 170,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      scrollDirection: Axis.horizontal,
                      itemCount: SpacialComboList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {},
                            child: TopPicksWight(top: top_picks_list[index]));
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
            ),
          ),
          drawer: Container(
              child: Drawer(
                  child: ListView(children: [
            Container(
                height: 120,
                //width:80,
                //margin: EdgeInsets.only(right: 20),
                child: DrawerHeader(
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(top: 0, left: 10),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              'assets/ic_profile.png',
                            ),
                            backgroundColor: AppColor.WhiteColor,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 40),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Gohil Manav",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_terms_condition.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Select Branch",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_notification.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_profile.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My profile",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_delivery_location.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Address",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_order_history.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Orders",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_table_reservation.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Table Reservation",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_table_reservation.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Reservation",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_img_unfav.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "My Favorites",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_gift_card.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  "Gift Cards",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_refer_earn.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Refer and Earn',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_reward.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Reward/Loyalty Points',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_restaurant_feedback.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Restaurant Feedback',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_about_us.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_terms_condition.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_help_support.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "feature coming soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.deepOrange,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: ListTile(
                leading: Image(
                  image: AssetImage(
                    "assets/ic_setting.png",
                  ),
                  height: 30,
                  width: 30,
                ),
                title: Text(
                  'settings',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: FloatingActionButton(
                onPressed: () async {
                  return showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 20,
                          backgroundColor: AppColor.WhiteColor,
                          actions: [
                            Center(
                              child: Text(
                                "Are you sure !!",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: AppColor.TheamColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
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
                                            builder: (context) => LoginPage(),
                                          ));
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        color: AppColor.TheamColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Log Out",
                                          style: TextStyle(
                                            color: AppColor.WhiteColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        );
                      });
                },
                child: StickyFloatButton(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.TheamColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Log out",
                        style: TextStyle(
                            color: AppColor.WhiteColor,
                            fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ])))),
    );
  }
}
