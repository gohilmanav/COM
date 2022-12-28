import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';

import 'package:user1/models/Combos_model.dart';
import 'package:user1/ui/home/homescreen.dart';

// ignore: must_be_immutable
class CombosWight extends StatelessWidget {
  CombosWight({Key? key, required this.Combos2}) : super(key: key);
  Combosmodel Combos2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 110.0,
        width: 320.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.WhiteColor,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                // height: 90,
                // width: 50,
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "${Combos2.imageUrl}",
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            "${Combos2.description}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35,left: 40),
                  child: Row(
                    children: [
                      Text("${Combos2.price}",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const homescreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,),
                      child: Container(
                        height: 25,width: 62,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(5)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Add',
                              style: TextStyle(fontWeight: FontWeight.bold,color:AppColor.WhiteColor,fontSize: 12 ),
                            )),
                      ),
                    ),
                  ), ],
                    
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
