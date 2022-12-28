import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fooddelivery/Cart/Cart.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

class Mappage extends StatefulWidget {
  const Mappage({Key? key}) : super(key: key);

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image(image: AssetImage("assets/Rectangle 30.png")),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cart()),
                            );
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  AppTheme.themeData(context).backgroundColor,
                              ),
                              child: Image(
                                  image: AssetImage("assets/ic_back.png"))),
                        ),
                      ),
                     Padding(
                      padding: const EdgeInsets.only(top: 370.0),
                      child: ClipPath(clipper: (WaveClipperOne(flip: true,reverse: true,)),
                        child: Container(height:
                        MediaQuery.of(context).size.height/2,
                                           width: MediaQuery.of(context).size.width ,
                        decoration: BoxDecoration(color:  AppTheme.themeData(context).disabledColor,borderRadius: BorderRadius.only(topLeft: Radius.circular(110),
                                 )),), 
                      ),

                     )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 410, left: 30),
                  child: Container(
                    height: 357,
                    width: 307,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 208.0,top: 5),
                          child: Text(
                            "Delivery time",
                            style: TextStyle(color:  AppTheme.themeData(context).cardColor,),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 3.0, top: 5),
                              child: Image(
                                image: AssetImage("assets/ic_cal_time.png"),
                                height: 25,
                                width: 25,color:  AppTheme.themeData(context).cardColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "20min",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/Rectangle 10 (1).png")),
                                ),
                              ),
                              
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "George William",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "               Delivery person\n      Your order has been Confirmed",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                              
                             
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Container(
                                  height: 44,
                                  width: 44,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:  AppTheme.themeData(context).backgroundColor,),
                                  child: Image(
                                      image: AssetImage("assets/Vector (9).png")),
                                ),
                              )
                            ],
                          ),
                        ), Divider(thickness: 0.0,color: AppTheme.themeData(context).dividerColor),
                        
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Container(height: 49,
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:  AppTheme.themeData(context).focusColor,),
                                    child: Image(
                                        image: AssetImage("assets/Vector(1).png"))),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Order confirmed",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 25,
                                      height: 8,
                                    ),
                                    Text(
                                      "           Your order has been Confirmed",
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),const Divider(thickness: 0.5,),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(height: 51,
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:  AppTheme.themeData(context).focusColor,),
                                    child: Image(
                                        image: AssetImage("assets/Vector(1).png"))),
                                SizedBox(
                                  height: 8,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Order confirmed",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 25,
                                      height: 10,
                                    ),
                                    Text(
                                      "           Your order has been prepared",
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),const Divider(thickness: 0.5,),
                       
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(height: 78,
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:  AppTheme.themeData(context).backgroundColor,),
                                    child: Image(
                                        image: AssetImage("assets/Rectangle 10(1).png"))),
                                SizedBox(
                                  height: 8,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Delivery in progress",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 25,
                                      height: 10,
                                    ),
                                    Text(
                                      "           Hang on! Your food is on the way ",
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                // Padding(
                //   padding: const EdgeInsets.only(top: 470, left: 30),
                //   child: Text("Delivery time"),
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(top: 490, left: 25),
                //       child: Image(
                //         image: AssetImage(
                //           "assets/ic_cal_time.png",
                //         ),
                //         color: AppColor.BlackColor,
                //         height: 20,
                //         width: 20,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 490, left: 5),
                //       child: Text(
                //         "20min",
                //         style: TextStyle(
                //             fontSize: 20, fontWeight: FontWeight.bold),
                //       ),
                //     )
                //   ],
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 520.0,left: 20),
                //   child: Container(child: Image(image: AssetImage("assets/Rectangle 10 (1).png")),),
                // ),Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text("George William"),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 520.0,left: 250),
                //   child: Container(height:50,width: 50,
                //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:AppColor.WhiteColor),
                //     child: Image(image: AssetImage("assets/Vector (9).png")),),
                // )
              ],
            )
          ],
        )),
      ),
    );
  }
}
//class CustomClipPath extends CustomClipper<Path> {
  // var radius=5.0;
  // @override
  // Path getClip(Size size) {
  //   Path path = Path();
  //   path.lineTo(size.width / 2, size.height);
  //   path.lineTo(size.width, 0.0);
  //   return path;
  // }
  // @override
  // bool shouldReclip(CustomClipper<Path> oldClipper) => false;





