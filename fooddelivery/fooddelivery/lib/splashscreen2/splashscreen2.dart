import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/LoginPage/LoginPage.dart';
import 'package:fooddelivery/Utils/App_color.dart';

class splashscreen2 extends StatefulWidget {
  const splashscreen2({Key? key}) : super(key: key);

  @override
  State<splashscreen2> createState() => _splashscreen2State();
}

class _splashscreen2State extends State<splashscreen2> {
  final int _numpage = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentpage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numpage; i++) {
      list.add(i == _currentpage ? _indicatot(true) : _indicatot(false));
    }
    return list;
  }

  Widget _indicatot(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 8,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? AppColor.purpel : AppColor.TextColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
         AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      height: 600,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentpage = page;
                          });
                        },
                        children: [
                          Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage("assets/popcorn 1.png"),
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                                Text(
                                  "Choose A Tasty Dish",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "Order anything you want from your     \n                Favorite restaurant.",
                                    style: TextStyle(
                                        color: AppColor.TextColor,
                                        fontSize: 16))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage("assets/money 1.png"),
                                    height: 300,
                                    width: 300,
                                  ),
                                ),
                                Text(
                                  "Easy Payment",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "  Payment made easy through debit  \n card, credit card  & more ways to pay \n                    for your food",
                                    style: TextStyle(
                                        color: AppColor.TextColor,
                                        fontSize: 16))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(90),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image(
                                    image:
                                        AssetImage("assets/restaurant 1.png"),
                                    height: 170,
                                    width: 170,
                                  ),
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  "Enjoy the Taste!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "Healthy eating means\n eating a variety of foods\nthat give you the nutrients\nyou need to maintain your \n health.",
                                    style: TextStyle(
                                        color: AppColor.TextColor,
                                        fontSize: 15))
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                  ),
                  _currentpage != _numpage - 1
                      ? Expanded(
                          child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.ease);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              )),
                        ))
                      : Text("")
                ]),
          ),
        ),
        bottomSheet: _currentpage == _numpage - 1
            ? GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text("start"),
                    ),
                  ),
                ),
              )
            : Text(""));
  }
}
