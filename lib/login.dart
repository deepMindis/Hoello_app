// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_new, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailaddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //_________________________________________________________________________
              Container(
                width: 150,
                height: 150,
                child: Image(image: AssetImage("images/login.png")),
              ),
              //_________________________________________________________________________
              SizedBox(
                height: 40,
              ),
              //_________________________________________________________________________
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: emailaddress,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Email-Address",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      )),
                ),
              ),
              //_________________________________________________________________________
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: password,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      )),
                ),
              ),
              //_________________________________________________________________________
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 200),
                child: Container(
                  child: TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "Forget your passwrd?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              ),
              //_________________________________________________________________________
              SizedBox(
                height: 40,
              ),
              //_________________________________________________________________________
              Container(
                width: 180,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30)),
                child: MaterialButton(
                  onPressed: (() {}),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              //_________________________________________________________________________
              SizedBox(
                height: 30,
              ),
              //_________________________________________________________________________
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Dont't  have account ?",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: (() {}),
                          child: Text(
                            "Sign Up",
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
    );
  }
}
