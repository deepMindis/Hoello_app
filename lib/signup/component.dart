// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class DefaultFormFiledSignUp extends StatelessWidget {
  TextEditingController controller;
  FormFieldValidator<String> validate;
  TextInputType inputType;
  String? hintext;

  IconData? suffix;
  bool isPassword = false;

  DefaultFormFiledSignUp({
    super.key,
    required this.controller,
    required this.validate,
    required this.inputType,
    this.hintext,
    this.suffix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      validator: validate,
      decoration: InputDecoration(
          suffixIcon: Icon(
            suffix,
            color: Colors.white,
            size: 30,
          ),
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.white, fontSize: 18),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.5)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          )),
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
