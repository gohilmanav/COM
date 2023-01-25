import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:posts/Model/Post_Model.dart';

class Postwidget extends StatefulWidget {
  PostsModel postModel1;
  Postwidget({Key? key, required this.postModel1}) : super(key: key);

  @override
  State<Postwidget> createState() => _PostwidgetState();
}

class _PostwidgetState extends State<Postwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topRight,
                //   child: Text(
                //     " ${widget.postModel1.it}",
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 15,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.postModel1.title}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.postModel1.body}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
