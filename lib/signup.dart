// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  TextEditingController firstname = new TextEditingController();
  TextEditingController secondname = new TextEditingController();
  TextEditingController emailaddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController passwordagain = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        controller: firstname,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "First name",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.5)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  //______________________
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        controller: secondname,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: "Second name",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.5)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              //_________________________________________________________________________
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  obscureText: true,
                  controller: password,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordagain,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Re-Password",
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  controller: phonenumber,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Phone",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      )),
                ),
              ),
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
                  onPressed: (() {}),
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
    );
  }
}
