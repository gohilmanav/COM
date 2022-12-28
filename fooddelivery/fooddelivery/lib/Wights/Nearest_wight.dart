import 'package:flutter/material.dart';
import 'package:fooddelivery/Models/Nearest_model.dart';
import 'package:fooddelivery/Utils/App_color.dart';
import 'package:fooddelivery/Utils/app_theme.dart';
import 'package:fooddelivery/westway/westway.dart';

// ignore: must_be_immutable
class Nearestwight extends StatelessWidget {
  Nearestwight({Key? key, required this.Nearest}) : super(key: key);
  NearestModel Nearest;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        //color: Colors.black,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => westway()),
                );
              },
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('${Nearest.imageurl}'),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          if (Nearest.reting != "")
            ClipRRect(borderRadius:  BorderRadius.circular(18),
              child: Padding(
                padding: const EdgeInsets.only(top: 89.7,left: 3),
                child: Container(decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color:AppColor.TheamColor ),
                  height: 40,
                  width: 90,
                 // color: AppColor.TheamColor,
                  child: Center(
                      child: Text(
                    "${Nearest.reting}",
                    style: TextStyle(color:  AppTheme.themeData(context).backgroundColor,),
                  )),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 5),
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 9),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            " ${Nearest.description}",
                            style: TextStyle(
                                color:  AppTheme.themeData(context).cardColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      //                Padding(
                      //                 padding: const EdgeInsets.only(left: 10, top: 5),
                      //                 child: Align(
                      //                   alignment: Alignment.topLeft,
                      //                   child: Text(
                      //                     "${Nearest.}",
                      //                     style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontSize: 15,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //               ),
                      //             // ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
