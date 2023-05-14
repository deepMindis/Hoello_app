// ignore_for_file: must_be_immutable, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, body_might_complete_normally_nullable

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'package:testing/signup/component.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  var uuid = Uuid();
  //_______________________________________ variabels __________________________________________
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordagain = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController persontype = TextEditingController();
  TextEditingController code = TextEditingController();

  var formKey = GlobalKey<FormState>();
  //________________________________________________________________________________________________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                //_________________________________________________________________________
                Container(
                  width: 150,
                  height: 150,
                  child: Image(image: AssetImage("images/login.png")),
                ),
                //_________________________________________________________________________
                SizedBox(
                  height: 30,
                ),
                //_________________________________________________________________________

                //________________________________________________________________________________
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: DefaultFormFiledSignUp(
                          controller: firstname,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter your first name!';
                            }
                            return null;
                          },
                          inputType: TextInputType.name,
                          hintext: 'First name',
                        ),
                      ),
                    ),
                    //______________________
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: DefaultFormFiledSignUp(
                          controller: lastname,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Last name!';
                            }
                            return null;
                          },
                          inputType: TextInputType.name,
                          hintext: 'Last name',
                        ),
                      ),
                    ),
                  ],
                ),
                //_________________________________________________________________________
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: DefaultFormFiledSignUp(
                    controller: emailaddress,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email !';
                      }
                      return null;
                    },
                    inputType: TextInputType.emailAddress,
                    hintext: 'Email Address',
                    suffix: Icons.email,
                  ),
                ),
                //_________________________________________________________________________
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: DefaultFormFiledSignUp(
                    controller: password,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password !';
                      }
                      return null;
                    },
                    inputType: TextInputType.visiblePassword,
                    hintext: 'Password',
                    suffix: Icons.remove_red_eye,
                  ),
                ),
                //_________________________________________________________________________
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: DefaultFormFiledSignUp(
                    controller: passwordagain,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please write your password again!';
                      }
                      return null;
                    },
                    inputType: TextInputType.visiblePassword,
                    hintext: 'Re-password',
                    suffix: Icons.remove_red_eye,
                  ),
                ),
                //_________________________________________________________________________
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: DefaultFormFiledSignUp(
                    controller: phonenumber,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please write your phone!';
                      }
                      return null;
                    },
                    inputType: TextInputType.phone,
                    hintext: 'mobile number',
                    suffix: Icons.phone,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //_________________________________________________________________________

                //________________________________________________________________________
                SizedBox(
                  height: 30,
                ),
                //________________________________________________________________________
                Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(30)),
                  child: MaterialButton(
                    onPressed: (() {
                      print(generatecode(uuid.v1()));
                    }),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //_________________________________________________________________________
                //_________________________________________________________________________
                SizedBox(
                  height: 15,
                ),
                //_________________________________________________________________________
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Already have account?",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: (() {}),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.deepOrange,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String generatecode(String code) {
  BarcodeWidget(
    data: code,
    barcode: Barcode.qrCode(),
  );
  return code;
}
