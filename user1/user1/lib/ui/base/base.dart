import 'package:flutter/material.dart';
import 'package:user1/Utils/App_color.dart';
// ignore: unused_import
import 'package:user1/ui/Refer&earn/Refer_earn.dart';
// ignore: unused_import
import 'package:user1/ui/home/homescreen.dart';
// ignore: unused_import
import 'package:user1/ui/profile/profile.dart';

class base extends StatefulWidget {
  const base({Key? key}) : super(key: key);

  @override
  State<base> createState() => _BaseState();
}

class _BaseState extends State<base> {
  // ignore: unused_element
  // _onTap(int homescreen) {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
  //     return _children[Myindex];
  //   }));}

  // final List<Widget> _children = [
  //   homescreen(),
  //   Refer_earn(),
  //   Myprofile()
  // ];
  int Myindex = 0;

  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    homescreen(),
    Refer_earn(),
   Myprofile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      Myindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _widgetOptions.elementAt(Myindex),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
              icon: ImageIcon(
                AssetImage("assets/home_new.png"),
                color: AppColor.TheamColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/ic_refer_earn.png"),
              color: AppColor.TheamColor,
            ),
            label: 'Refer&earn',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/ic_profile.png"),
              color: AppColor.TheamColor,
            ),
            label: 'Profile',
          ),
        ],
       
        currentIndex: Myindex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      
    );
    
  }
}
