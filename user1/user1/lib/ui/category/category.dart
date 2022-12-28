import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
import 'package:user1/models/caregory_model.dart';
import 'package:user1/ui/base/base.dart';
import 'package:user1/ui/home/homescreen.dart';
import 'package:user1/wights/category_wight.dart';

class Category extends StatefulWidget {
  static var GridView;

  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

List<Categorymodel> CategoryWightlist = [
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
  Categorymodel(id: "1", imageUrl: "assets/pizza1.jpeg", description: "manav"),
];

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.inputfieldbackgroundcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.WhiteColor,
          actions: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => base()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Image(
                          image: AssetImage(
                        "assets/ic_back.png",
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Text("Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                        padding: EdgeInsets.only(left: 320),
                        child: Image.asset("assets/home_new.png")),
                  ),
                )
              ],
            )
          ],
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              // color: AppColor.BlackColor,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.WhiteColor,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/ic_search.png',
                            width: 3,
                            height: 3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none),
                        labelText: "Search item")),
              ),
            ),
            SizedBox(
              height: 15,
              
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                
                padding: EdgeInsets.only(top: 0),
                child: GridView.builder(
                  itemCount: CategoryWightlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,

                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryWight(Category: CategoryWightlist[index]);
                  },
                ),
              ),
            ))
          ]),
        ));
  }
}
