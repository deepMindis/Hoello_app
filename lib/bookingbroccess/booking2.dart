// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DuringBooking extends StatelessWidget {
  DuringBooking({super.key});

  //_________________________ variables ____________
  List Rooms = [
    {
      'title': 'Deluxe Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/deulexroom.jpeg',
      'price': '165\$',
    },
    {
      'title': 'Royal Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/royalroom.jpeg',
      'price': '336\$',
    },
    {
      'title': 'superior Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/singleroom.jpeg',
      'price': '224\$',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      //_________________________________________ App Bar _________________________________
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
        backgroundColor: Colors.white,
        title: Text(
          'Home',
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
      //__________________________________________ Body ________________________________________
      body: Column(
        //_________________________________ image ________________________________
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(-300),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bookingbroccess/booking.jpeg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 65, 19, 173).withOpacity(.8),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Make Booking Easily",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  //__________________________
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: Text(
                      "Rooms Available",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  //_____________________________________________________
                  SizedBox(
                    height: 100,
                  ),
                  //___________________________ Row ____________________________
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        //_____first
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Check-in",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "1/8/2022",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //______________
                        Container(
                          color: Colors.grey,
                          height: 30,
                          width: 2,
                        ),
                        //_____________
                        //_____second
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Check-out",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "3/5/2022",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // third
                        //______________
                        Container(
                          color: Colors.grey,
                          height: 30,
                          width: 2,
                        ),
                        //_____________
                        //_____second
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Room type",
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Single Room",
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //_________________________________________________________________

          //________________________________________________________________________________
          //________________________________________________________________________________
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Rooms.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          //first Row ____________________
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          Rooms[i]['title'],
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Text(
                                          Rooms[i]['body'],
                                          maxLines: 5,
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //____ image
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(Rooms[i]['image']),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //second Row__________________________
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 30,
                                ),
                                //_______ price
                                Spacer(),
                                Container(
                                  child: Text(
                                    Rooms[i]['price'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Spacer(),
                                //______ buuton
                                Container(
                                  width: 120,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: MaterialButton(
                                    onPressed: (() {}),
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
