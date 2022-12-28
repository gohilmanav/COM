import 'package:flutter/material.dart';

import 'package:user1/models/caregory_model.dart';

// ignore: must_be_immutable
class CategoryWight extends StatelessWidget {
  CategoryWight({Key? key, required this.Category}) : super(key: key);
  Categorymodel Category;
  @override
  Widget build(BuildContext context) {
    return 
    
     ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,),
        child: Container(
            height: 150,
            width: 140,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      Category.imageUrl,
                      height: 150,width: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110,),
                    child: Container(height: 40,width: 140,
                decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            Category.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
