// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sort_child_properties_last, sized_box_for_whitespace, unnecessary_import, avoid_print, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing/bookingbroccess/booking.dart';
import 'package:testing/bookingbroccess/booking2.dart';
import 'package:testing/bookingbroccess/explore.dart';
import 'package:testing/bookingbroccess/start.dart';
import 'package:testing/dfhdfh.dart';
import 'package:testing/filterscreen/filterscreen.dart';
import 'package:testing/getstarted/getstarted.dart';
import 'package:testing/login.dart';
import 'package:testing/onboarding/onboardingscreen.dart';
import 'package:testing/payment/modules/screens/register_screeen.dart';
import 'package:testing/signup/signup.dart';

void main() {
  runApp(MyApp());
}

// _______________________________   _________________________________
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MakeBooking(),
    );
  }
}
