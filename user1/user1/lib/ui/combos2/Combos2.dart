import 'package:flutter/material.dart';

import 'package:user1/Utils/App_color.dart';
import 'package:user1/models/Combos_model.dart';
import 'package:user1/ui/base/base.dart';
import 'package:user1/wights/Combos_wight.dart';

class Combos2 extends StatefulWidget {
  const Combos2({Key? key}) : super(key: key);

  @override
  State<Combos2> createState() => _UserState();
}

List<Combosmodel> Combos2list = [
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
  Combosmodel(
    id: "1",
    imageUrl: "assets/pizza1.jpeg",
    description: "manav",
    price: "100",
  ),
];

class _UserState extends State<Combos2> {
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
                  child: Text("Specials / Combos",
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
                    MaterialPageRoute(builder: (context) => base()),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.WhiteColor,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
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
            height: 10,
          ),
          Expanded(
            child: Container(
              height: 170,
              width: 320,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: Combos2list.length,
                itemBuilder: (context, index) {
                  return CombosWight(Combos2: Combos2list[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
