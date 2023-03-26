// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectRoomType extends StatelessWidget {
  SelectRoomType({super.key});
  //______________________ variabels
  List typesitems = [
    {
      'title': 'Single Rooms',
      'image': 'images/bookingbroccess/explore/room2.jpeg'
    },
    {
      'title': 'Double Rooms',
      'image': 'images/bookingbroccess/explore/room1.jpeg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 19, 173),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 36, 3, 112),
            statusBarIconBrightness: Brightness.light),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 65, 19, 173),
            size: 35,
          ),
        ),
        title: Text(
          "Select Room",
          style: TextStyle(
            color: Color.fromARGB(255, 65, 19, 173),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      //____________________________________________ Body
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: typesitems.length,
          itemBuilder: ((context, index) {
            return Container(
              margin: EdgeInsets.all(20),
              child: InkWell(
                onTap: (() {}),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(typesitems[index]['image']),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 65, 19, 173).withOpacity(.6),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        typesitems[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
