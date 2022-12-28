import 'package:flutter/material.dart';

import 'package:fooddelivery/Models/Popular_model.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

// ignore: must_be_immutable
class Popularwight extends StatelessWidget {
  Popularwight({Key? key,required this.Popular}) : super(key: key);
 Popularmodel  Popular  ;
  @override
  Widget build(BuildContext context) {
 
return Container( height: 150,
      width: 160,
      decoration: BoxDecoration(
        //color: Colors.black,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('${Popular.imageurl}'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 5),
            child: Column(
              children: [
                Container(
                  height: 29,
                  width: 150,
                  decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 8),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            " ${ Popular.reting}",
                            style: TextStyle(
                                color:  AppTheme.themeData(context).disabledColor,
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
      ),);
  }
}