import 'package:flutter/material.dart';
import 'package:fooddelivery/Models/Westway_model.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

// ignore: must_be_immutable
class Westwaywight extends StatelessWidget {
  Westwaywight({Key? key, required this.westway}) : super(key: key);
  Westwaymodel westway;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 110.0,
        width: 270.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:  AppTheme.themeData(context).backgroundColor,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 110,
                    width: 110,
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "${westway.imageurl}",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                if (westway.reting!="")
                ClipRRect(borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80, ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:  AppTheme.themeData(context).primaryColor,),
                      height: 20,
                      width: 50,
                      // color: AppColor.TheamColor,
                      child: Center(
                          child: Text(
                        "${westway.reting}",
                        style: TextStyle(color:  AppTheme.themeData(context).backgroundColor,),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "${westway.time}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  child: Container(
                    height: 25,
                    width: 62,
                    decoration: BoxDecoration(
                        color:  AppTheme.themeData(context).primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:  AppTheme.themeData(context).backgroundColor,
                              fontSize: 12),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),

        //  child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Column(
        //     children: [
        //       Column(children: [Text("data")],),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
