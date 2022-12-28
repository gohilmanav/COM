import 'package:flutter/material.dart';
import 'package:fooddelivery/Models/Menu_model.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

// ignore: must_be_immutable
class MenuWight extends StatelessWidget {
  MenuWight({Key? key, required this.Menu}) : super(key: key);
  Menumodel Menu;
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
                          "${Menu.imageurl}",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                if (Menu.reting != "")
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:  AppTheme.themeData(context).primaryColor,),
                      height: 20,
                      width: 50,
                      // color: AppColor.TheamColor,
                      child: Center(
                          child: Text(
                        "${Menu.reting}",
                        style: TextStyle(color:  AppTheme.themeData(context).backgroundColor,),
                      )),
                    ),
                  ),
              ],
            ),
            Column(
              
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "${Menu.time}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text(
                    "${Menu.id}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 2,
                //   ),
                //   child: Container(
                //     height: 25,
                //     width: 62,
                //     decoration: BoxDecoration(
                //         color: Colors.deepOrange,
                //         borderRadius: BorderRadius.circular(5)),
                //     child: Align(
                //         alignment: Alignment.center,
                //         child: Text(
                //           'Add',
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               color: AppColor.WhiteColor,
                //               fontSize: 12),
                //         )),
                //   ),
                // ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Center(child: Image(image: AssetImage("assets/plus-square.png"))),
              ),
          ],
        ),
      ),
    );
  }
}
