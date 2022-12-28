// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_register/ui/register/login/login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController numberController = TextEditingController();
//bool _obsecureText = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
         TextEditingController EnterEmailController =TextEditingController();
         TextEditingController enteryournameController  =TextEditingController();
                  TextEditingController genderController  =TextEditingController();
                                    TextEditingController addressController  =TextEditingController();


  bool p_isObscure = true;
  bool pc_isObscure = false;

  bool validate = false;

  var onPressed;

  // ignore: unused_field
  var _submit;

  get fluttertoast => null;

// void dispose() {

//     passwordd.dispose();

//     super.dispose();
//   }

//   void initState() {

//     password = TextEditingController();

//     super.initState();
//   }
  // @override
  // void initState() {
  //   dateController.text = "Enter DOB Date"; //set the initial value of text field
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Colors.blueGrey,
      
      body: SafeArea( 

          child: Stack(
            children: [
              Container(child:Image(image: AssetImage("assets/download.jpeg",
              
              ),height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,fit: BoxFit.fill,
              ),
              ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(alignment: Alignment.topCenter, child: Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.cyan,), "RegisterPage")),
            ),
            
            Expanded(child: SingleChildScrollView(
              child: Column(children: [
                Padding(
              padding: const EdgeInsets.only(top: 70, right: 15, left: 15,bottom: 20),
              child: TextField(
                
                decoration: InputDecoration(
                    hintText: 'Enter Your Full Name',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
                      
                        borderSide: BorderSide(color: Colors.black54)
                        ),
                        
                        prefixIcon: Icon(Icons.person)),
                     inputFormatters:[
                          LengthLimitingTextInputFormatter(25),
                   ],
                
               controller:enteryournameController ,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15,bottom: 20),
                child: TextField(
                          controller:
                              dateController, //editing controller of this TextField
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                  Icons.calendar_today), //icon of text field
                              hintText:
                                  "Select Your Birth Date" ,
                                  filled:true,
                                  fillColor: Colors.white//label text of field
                              ),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('dd-MM-yyyy').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              // setState(() {
                              //   dateController.text =
                              //       formattedDate; //set output date to TextField value.
                              // });
                            } else {
                              print("Date is not selected");
                            }
                          }),),

                          Padding(
              padding: EdgeInsets.only(top: 10, right:15, left: 15,bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54),
                        borderRadius: BorderRadius.circular(10.0),),
                 prefixIcon: Icon(Icons.mail),
                  filled:true,
                                  fillColor: Colors.white,
                  hintText: 'Enter Email'),
                 
                  
                validator: (value) 
                
                 {
                  if (value == null ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                    return "Enter Correct Email Address";
                  } else {
                    return null;
                  }
                },controller:EnterEmailController ,
              ),
            ),
                
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 15,bottom: 5),
              child: IntlPhoneField(
                controller: numberController,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder( 
                      borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(10.0), ),

                      ),
                     
                
                inputFormatters:[
                LengthLimitingTextInputFormatter(10),
                  ],
                  
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 15, left: 15,bottom: 20),
                child: TextField( 
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                      borderSide: BorderSide(
                        color: Colors.black54),
                       borderRadius: BorderRadius.circular(10.0), ),
                    hintText: 'Enter address',
                    filled:true,
                                  fillColor: Colors.white,
                                  
                    prefixIcon: Icon(Icons.home)
                  
                  
                  ),
                                      controller:addressController,

                 // maxLines: 3,
                  inputFormatters:[
                LengthLimitingTextInputFormatter(50),
                  ]
                  
                ),
              ),
            ]),
            
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15, left: 15,bottom: 20),
              child: TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(8)],
                  obscureText: p_isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10.0),),
                    prefixIcon: const Icon(Icons.lock),
                    errorText: validate ? 'Please Your Password' : null,
                   // labelText: 'Enter Password',
                    hintText: 'Enter Your Password',
                    filled:true,
                                  fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        p_isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          p_isObscure = !p_isObscure;
                        });
                      },
                    ),
                  ),
               
                  controller: passwordController,
                  validator: (val) {
                    if (val!.isEmpty) return 'Please Enter Your Password';
                    return null;
                  }),
            ),
            Column(),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15, left: 15,bottom: 20),
              child: TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(8)],
                  obscureText: pc_isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54),
                                borderRadius: BorderRadius.circular(10.0),),
                    prefixIcon: const Icon(Icons.lock),

                    errorText:
                        validate ? 'Please Enter Your Confirm Password' : null,
                    //labelText: 'Enter Confirm Password',
                    hintText: 'Enter Your Confirm Password',
                    filled:true,
                                  fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        pc_isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          pc_isObscure = !pc_isObscure;
                        });
                      },
                    ),
                  ),
                  // maxLength: 8,
                  controller: confirmPasswordController,
                  validator: (val) {
                    if (val!.isEmpty)
                      return 'Please Enter Your Confirm Password';
                    if (val != passwordController.text)
                      return 'Password Not Match';
                    return null;
                  }),
            ),
            
            Padding(padding: const EdgeInsets.only(top: 30, right:15, left: 15,bottom: 20),
                
                child:(GenderPickerWithImage( 
                  
              showOtherGender: true,
              verticalAlignedText: false,
              selectedGender: Gender.Male,
              selectedGenderTextStyle: TextStyle(
                  color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
              unSelectedGenderTextStyle: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
              
              equallyAligned: true,
              animationDuration: Duration(milliseconds: 300),
              isCircular: true,
              // default : true,
              opacityOfGradient: 0.4,
              padding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
              size: 50, onChanged: (Gender? value) {  }, //default : 40
            )
                 
                        
    

     
            )),
            const SizedBox(height: 30),
            ElevatedButton(


                onPressed: () {
                  if(enteryournameController.text.isEmpty) {Fluttertoast.showToast(
          msg: "Enter Name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
                    return;
                  }
                 else if (dateController.text.isEmpty) {Fluttertoast.showToast(
          msg: "Date is Empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
                    return;
                  } else if (numberController.text.isEmpty) {Fluttertoast.showToast(
          msg: "Enter your number",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
                    return;
                  }
                  else if (addressController.text.isEmpty) {Fluttertoast.showToast(
          msg: "Enter your Address",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
                    return;
                  } else if (passwordController.text.isEmpty) {
                    Fluttertoast.showToast(
          msg: "enter password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
            return;
                    
                  } else if (confirmPasswordController.text.isEmpty) {
                    Fluttertoast.showToast(
          msg: "enter password Again",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0);
            return ;
                    
                  } else if(EnterEmailController.text.isEmpty){
                   Fluttertoast.showToast(
              msg: "enter Email",
              toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.CENTER,
                   timeInSecForIosWeb: 1,
               textColor: Colors.black38,
          fontSize: 16.0);
            return ;
                  }
                  else(){

                  }   ;             
           onPressed (Fluttertoast.showToast(
          msg: "Submit",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          textColor: Colors.black38,
          fontSize: 16.0)   
      
    );
                
                }, child: Text("register "),

          ),
          Padding(padding: EdgeInsets.only()),
            SizedBox(
              height: 50,
            ),
            
           GestureDetector  (
  onTap: (){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const   LoginPage()),
            );
  },
  child: Text(
    'you have alredy account ? login hear ',
    style: TextStyle(color: Colors.black54, fontSize: 15),
  ),
),
              ],),
            ))
                      ]),
    ));
    
  }
}
