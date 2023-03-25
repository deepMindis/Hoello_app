// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Explore extends StatelessWidget {
  Explore({super.key});
  //______________________ variabels
  List exploreitems = [
    {
      'title': 'OVERVIEW',
      'image': 'images/bookingbroccess/explore/explore1.jpeg'
    },
    {'title': 'ROOMS', 'image': 'images/bookingbroccess/explore/explore2.jpeg'},
    {
      'title': 'DINING',
      'image': 'images/bookingbroccess/explore/explore3.jpeg'
    },
    {
      'title': 'MEETINGS',
      'image': 'images/bookingbroccess/explore/explore4.jpeg'
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
          "Explore",
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
          itemCount: exploreitems.length,
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
                        image: AssetImage(exploreitems[index]['image']),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 65, 19, 173).withOpacity(.6),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        exploreitems[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
      //______________________________________________________________________________________
      // bottomNavigationBar: CurvedNavigationBar(
      // onTap: ((value) {}),
      //backgroundColor: Color.fromARGB(255, 65, 19, 173),
      //color: Color.fromARGB(255, 38, 5, 114),
      //items: [
      //Icon(
      //Icons.home,
      //color: Colors.deepOrange,
      //size: 30,
      //),
      //Icon(
      //Icons.favorite,
      //color: Colors.deepOrange,
      //size: 30,
      //),
      //Icon(
      //Icons.settings,
      //color: Colors.deepOrange,
      //size: 30,
      //),
      //],
      //)
    );
  }
}
