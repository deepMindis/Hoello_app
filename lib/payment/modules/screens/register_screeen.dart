// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:testing/payment/modules/widgets/defualt_button.dart';
import 'package:testing/payment/modules/widgets/defualt_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  //________________________________________ variables ______________________________________
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  //________________________________________________________________________________________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //______________________________________ App Bar _____________________________________
      appBar: AppBar(
        title: const Text('Payment Integration'),
        backgroundColor: Color.fromARGB(255, 72, 15, 146),
        centerTitle: true,
      ),
      //______________________________________ Body ____________________________________________
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              //______________________ image _______________________________________
              Container(
                child: Image.asset(
                  "images/onboarding/introduction1.png",
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                ),
              ),
              //___________________________________________________________________
              Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: DefaultTextFormFiled(
                              controller: firstNameController,
                              type: TextInputType.name,
                              hintText: 'First name',
                              prefix: Icons.person,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your first name!';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: DefaultTextFormFiled(
                              controller: lastNameController,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your last name !';
                                }
                                return null;
                              },
                              type: TextInputType.name,
                              hintText: 'Last name',
                              prefix: Icons.person,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      DefaultTextFormFiled(
                        controller: emailController,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email  !';
                          }
                          return null;
                        },
                        type: TextInputType.emailAddress,
                        hintText: 'Email',
                        prefix: Icons.email,
                      ),
                      const SizedBox(height: 10),
                      DefaultTextFormFiled(
                        controller: phoneController,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone !';
                          }
                          return null;
                        },
                        type: TextInputType.number,
                        hintText: 'Phone',
                        prefix: Icons.phone,
                      ),
                      const SizedBox(height: 10),
                      DefaultTextFormFiled(
                        controller: priceController,
                        validate: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your price !';
                          }
                          return null;
                        },
                        type: TextInputType.number,
                        hintText: 'Price',
                        prefix: Icons.monetization_on,
                      ),
                      const SizedBox(height: 20),
                      DefaultButton(
                        buttonWidget: const Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 1.6,
                          ),
                        ),
                        function: () {
                          if (formKey.currentState!.validate()) {
                            print("hello adam");
                          }
                        },
                        width: MediaQuery.of(context).size.width,
                        radius: 10.0,
                        backgroundColor: Colors.purple.shade300,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
