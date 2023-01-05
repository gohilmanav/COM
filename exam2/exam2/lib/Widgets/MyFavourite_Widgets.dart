import 'package:exam2/Models/MyFavourite_model.dart';
import 'package:exam2/Models/SpacialCombo_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MyFavouriteWidget extends StatelessWidget {
  MyFavouriteWidget({Key? key, required this.Fav}) : super(key: key);

  MyFavouriteModel Fav;
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('${Fav.imageUrl}'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105, left: 5),
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            " ${ Fav.description}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      GestureDetector(onLongPress: () {
                      //   Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Cart()),
                      // );
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${Fav.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
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
