// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sort_child_properties_last, sized_box_for_whitespace, unnecessary_import, avoid_print, deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing/bookingbroccess/booking/booking_new.dart';
import 'package:testing/bookingbroccess/booking/booking_new2.dart';
import 'package:testing/bookingbroccess/booking/booking_new3.dart';
import 'package:testing/bookingbroccess/booking/booking_new4.dart';
import 'package:testing/bookingbroccess/booking/confirmed.dart';
import 'package:testing/bookingbroccess/explore/dining.dart';
import 'package:testing/bookingbroccess/explore/explore.dart';
import 'package:testing/bookingbroccess/explore/meeting.dart';
import 'package:testing/bookingbroccess/explore/overview.dart';
import 'package:testing/bookingbroccess/explore/rooms.dart';
import 'package:testing/bookingbroccess/start.dart';
import 'package:testing/filterscreen/filterscreen.dart';
import 'package:testing/getstarted/getstarted.dart';
import 'package:testing/hotel_services/all_services.dart';
import 'package:testing/login.dart';
import 'package:testing/onboarding/onboardingscreen.dart';
import 'package:testing/payment/payment_screen.dart';
import 'package:testing/qr_code.dart/create_qr.dart';
import 'package:testing/qr_code.dart/scan_qr.dart';
import 'package:testing/room_details2.dart';
import 'package:testing/signup/signup.dart';
import 'package:testing/bookingbroccess/booking/new_room/try.dart';

void main() {
  runApp(MyApp());
}

// _______________________________   _________________________________
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllServices(),
    );
  }
}
