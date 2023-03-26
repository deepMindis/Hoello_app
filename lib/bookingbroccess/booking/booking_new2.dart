// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewChoosedType extends StatelessWidget {
  ViewChoosedType({super.key});

  //_________________________ variables ____________
  List Rooms = [
    {
      'title': 'Deluxe Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/deulexroom.jpeg',
    },
    {
      'title': 'Royal Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/royalroom.jpeg',
    },
    {
      'title': 'superior Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/singleroom.jpeg',
    },
    {
      'title': 'Royal Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/royalroom.jpeg',
    },
    {
      'title': 'superior Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/singleroom.jpeg',
    },
    {
      'title': 'Royal Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/royalroom.jpeg',
    },
    {
      'title': 'superior Room',
      'body':
          'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
      'image': 'images/bookingbroccess/booking/singleroom.jpeg',
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
          'Single Rooms',
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
          //_________________________________________________________________

          //________________________________________________________________________________
          //________________________________________________________________________________
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Rooms.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 150,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            Rooms[index]['title'],
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: 150,
                                          child: Text(
                                            Rooms[index]['body'],
                                            maxLines: 5,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
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
                                            image: AssetImage(
                                                Rooms[index]['image']),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
