// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 65, 19, 173),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //_________________________________ imamge ______________
            Container(
              width: double.infinity,
              height: 220,
              child: Image(
                image: AssetImage(
                    'images/bookingbroccess/booking/deulexroom.jpeg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            // SizedBox(
            // height: 40,
            //),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 65, 19, 173),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '165\$',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //separator
                  Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 1.5,
                  ),
                  //__________
                  SizedBox(
                    height: 25,
                  ),
                  //_____________________ text _____________________
                  Row(
                    children: [
                      Text(
                        'Smooking ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Yes ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //separator
                  Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 1.5,
                  ),
                  //__________
                  SizedBox(
                    height: 25,
                  ),
                  //_____________________ text _____________________
                  Row(
                    children: [
                      Text(
                        'Room number ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '3007',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //separator
                  Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 1.5,
                  ),
                  //__________
                  SizedBox(
                    height: 25,
                  ),
                  //_____________________ text _____________________

                  Text(
                    'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),

                  //__________
                  SizedBox(
                    height: 10,
                  ),
                  Container(
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
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),

            //______________________________________________button___________________________
          ],
        ),
      ),
    );
  }
}
