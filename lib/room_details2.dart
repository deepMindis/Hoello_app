// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoomDetails2 extends StatelessWidget {
  const RoomDetails2({super.key});

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/bookingbroccess/booking/deulexroom.jpeg',
                        ),
                        fit: BoxFit.cover)),
                height: 200,
              ),
              clipper: CustomClipPath(),
            ),
            //_________________________________ ______________
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Description',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'One king bed Cozy and spacious , with stunning views of Dubai city , Guests will appreciate the uniquely designed living and workspaces that measure 110 sqm',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //____________________________________________________________________________
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '165\$',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Smooking ',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Yes ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Room number ',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '3007',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //_____________________________________________________________________
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined),
                      iconSize: 50,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 220,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)),
                    child: MaterialButton(
                      onPressed: (() {}),
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          fontSize: 25,
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
  }
}

class CustomClipPath extends CustomClipper<Path> {
  //var radius = 1.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * .5, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
