// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      //_________________________________________ App Bar _________________________________
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Color.fromARGB(255, 65, 19, 173),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Room',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 65, 19, 173),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 65, 19, 173),
          iconSize: 35,
        ),
      ),
      //________________________________________________ Body _________________________
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //_________________________________ imamge ______________
          Container(
            width: double.infinity,
            height: 220,
            child: Image(
              image:
                  AssetImage('images/bookingbroccess/booking/deulexroom.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //_____________________ text _____________________
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                'Price : 165\$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          //__________
          SizedBox(
            height: 10,
          ),
          //_____________________ text _____________________
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                'Description :One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          //__________
          SizedBox(
            height: 10,
          ),
          //_____________________ text _____________________
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                'Smooking : Yes ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          //__________
          SizedBox(
            height: 10,
          ),
          //_____________________ text _____________________
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                'Animals : No ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          //__________
          SizedBox(
            height: 10,
          ),
          //_____________________ text _____________________
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                'Rate : 8.5 ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //______________________________________________button___________________________
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Container(
              width: 150,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                onPressed: (() {}),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
