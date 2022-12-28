import 'package:bloc/bloc/weather_bloc/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class WeatherHome extends StatefulWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  State<WeatherHome> createState() => _WeatherHomeState();

  static fromMap(item) {}
}

class _WeatherHomeState extends State<WeatherHome> {
late WeatherBloc weatherBloc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                color: Colors.orangeAccent,
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text(
                  "Weather of City",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Image(
                        image: AssetImage(
                          "assets/ic_search.png",
                        ),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 350,
                child: Image(
                    image: AssetImage(
                        "assets/sun-removebg-preview-removebg-preview.png")),
              ),
              Container(
                height: 45,
                child: Text(
                  "New York",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                height: 50,
                child: Text(
                  "19c",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.orangeAccent,
                  child: TextButton(
                    onPressed:() {
                      Fluttertoast.showToast(
        msg: "under programming",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 16.0
    );
    
                    },

                    child: Text(
                      "Get Weather",
                      style: TextStyle(color: Colors.black, fontSize: 17.5),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
