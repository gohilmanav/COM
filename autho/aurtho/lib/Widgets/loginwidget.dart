import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 40,
          ),
          TextFormField(
            controller: emailController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "Email"),
          ),
          SizedBox(
            height: 4,
          ),
          TextFormField(
            controller: passcontroller,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.lock_open,
                size: 32,
              ),
              label: Text(
                "Sing In",
                style: TextStyle(fontSize: 24),
              ))
        ]),
      );
  Future SingIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passcontroller.text.trim());
  }
}
