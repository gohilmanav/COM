import 'package:flutter/material.dart';
import 'package:flutter_register/ui/register/register.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold( 
    body: SafeArea(child: Column( 
        children: [
       Expanded(child: SingleChildScrollView(child: Column(children: [
        SizedBox(height: 50),
           Padding(
              padding: const EdgeInsets.all( 60.0),
              child: Center(
                child: Image.asset("assets/logo.jpeg",height: 150,width: 150,),
              ),
            ),
           //Image.asset("assets/images/logingpage.jpeg",height: 100,width: 150,),
          SizedBox(height:15 ,),
            Padding(
             
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
           
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
           SizedBox(height: 50),
            ElevatedButton(
  onPressed: (){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage ()),
            );
  },
 
   child: Text(
    'submit',
    style: TextStyle(color: Colors.white54, fontSize: 15),
  ),
  ),

            
             Padding(padding: EdgeInsets.only(top: 20
             )),
            SizedBox(
              height: 130,
            ),
            
           GestureDetector  (
  onTap: (){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage ()),
            );
  },
  child: Text(
    'you have not account ? registret hear ',
    style: TextStyle(color: Colors.black54, fontSize: 15),
  ),
),
          ] )) ),]
        ),
        
       ),);


        



    
    
    
    
    
  }
}