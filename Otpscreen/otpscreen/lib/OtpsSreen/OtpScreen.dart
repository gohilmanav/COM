import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.repeat();
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // @override
  // Future<Widget> build(BuildContext) async {
  //   Offset _offset=Offset(.3, -0.9);
  //   timeDilation =2.0;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: const Text(''),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                              "assets/Monkey-removebg-preview.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Center(
                        child: Container(
                          height: 170,
                          width: 170,
                          alignment: Alignment.topCenter,
                          transform: Matrix4.identity() ..setEntry(3, 2, 0.0011)
                          ..rotateX(_offset.dy)
                          ..rotateY(_offset.dx),
                          
                          
                          child: RotationTransition(
                           turns: animation,
                           
                           
                            child: Image.asset(
                                "assets/Crown-removebg-preview.png"),
                          )
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: PinCodeTextField(
                      length: 6,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      animationType: AnimationType.values[1],
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        activeColor: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 40,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.blue.shade50,
                      enableActiveFill: true,
                      controller: TextEditingController(),
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                ),
              ],
            )),
          )),
    );
  }
}
