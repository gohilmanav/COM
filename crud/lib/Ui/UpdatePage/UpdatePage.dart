import 'package:crud/Ui/Firstpage/Firstpage.dart';
import 'package:crud/Ui/Units/App_color.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo, Colors.black])),
        height: MediaQuery.of(context).size.height,
        width: 500,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0),
              child: Text(
                "Update Page",
                style: TextStyle(
                    color: AppColor.WhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0, top: 100),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "name"),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0, top: 5),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Mobile Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22.0, top: 5),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.pholder_background,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Age"),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient:
                        LinearGradient(colors: [Colors.indigo, Colors.pink])),
                child: TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: const Text("Are you sure !!"),
                      content: const Text('Update Your Details'),
                      backgroundColor: AppColor.pholder_background,
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Firstpage(),
                                ));
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: Text('Update'),
                ))
          ],
        ),
      )),
    ));
  }
}
