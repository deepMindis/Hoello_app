// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Meeting extends StatelessWidget {
  Meeting({super.key});
  //____________________________________ variables
  List meetingimages = [
    {'image': 'images/bookingbroccess/explore/meeting1.jpeg'},
    {'image': 'images/bookingbroccess/explore/meeting2.jpeg'},
    {'image': 'images/bookingbroccess/explore/meeting3.jpeg'},
    {'image': 'images/bookingbroccess/explore/meeting4.jpeg'},
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
          "Meetings",
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
          itemCount: meetingimages.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(meetingimages[index]['image']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
