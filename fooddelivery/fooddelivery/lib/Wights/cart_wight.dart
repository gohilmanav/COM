import 'package:flutter/material.dart';
import 'package:fooddelivery/Models/Cart_model.dart';
import 'package:fooddelivery/Utils/app_theme.dart';

// ignore: must_be_immutable
class CartWight extends StatelessWidget {
  // final int minValue;
  // final int maxValue;

  // final ValueChanged<int> onChanged;

  //   int counter = 0;

  // void _increment() {
  //   setState(() {
  //     _counter++;
  //     _counter--;
  //   });
  // }

  CartWight({
    Key? key,
    required this.cart,
  }) : super(key: key);

  cartmodel cart;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 10.0),
      child: Container(
        height: 98.0,
        width: 270.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppTheme.themeData(context).backgroundColor,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 92,
                    width: 92,
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "${cart.imageurl}",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                // Center(
                //   child: ElevatedButton(
                //     onPressed: _increment,
                //     style: ElevatedButton.styleFrom(primary: Colors.white),
                //     child: const Text(
                //       "+",
                //       style: TextStyle(color: AppColor.BlackColor),
                //     ),
                //   ),
                // ),
                // Text(' $_counter'),
                // if (cart.reting!="")
                // ClipRRect(borderRadius: BorderRadius.circular(12),
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 80, ),
                //     child: Container(
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(25),
                //           color: AppColor.TheamColor),
                //       height: 20,
                //       width: 50,
                //       // color: AppColor.TheamColor,
                //       child: Center(
                //           child: Text(
                //         "${cart.reting}",
                //         style: TextStyle(color: AppColor.WhiteColor),
                //       )),
                //     ),
                //   ),
                // ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "${cart.Name}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
//                 NumberInputWithIncrementDecrement(
//   controller: TextEditingController(),
//   decIconColor: AppColor.BlackColor,
//   incDecBgColor: AppColor.BlackColor,
//   min: 0,
//   max: 3,
// ),
// Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             icon: Icon(
//               Icons.remove,
//               color: Theme.of(context).accentColor,
//             ),
//             padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
//             iconSize: 32.0,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {
//               setState(() {
//                 if (counter > Widget.minValue) {
//                   counter--;
//                 }
//                 Widget.onChanged(counter);
//               });
//             },
//           ),
//           Text(
//             '$counter',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: 18.0,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.add,
//               color: Theme.of(context).accentColor,
//             ),
//             padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
//             iconSize: 32.0,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {
//               setState(() {
//                 if (counter < widget.maxValue) {
//                   counter++;
//                 }
//                 widget.onChanged(counter);
//               });
//             },
//           ),
//         ],
//       ),
//     ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.themeData(context).backgroundColor,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child:
                              Image(image: AssetImage("assets/Vector (8).png")),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: AppTheme.themeData(context).backgroundColor,
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: AppTheme.themeData(context).cardColor,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        InkWell(
                            onTap: () {},
                            child: Image(
                                image: AssetImage("assets/Vector (7).png"))),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text(
                    "${cart.total}",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
