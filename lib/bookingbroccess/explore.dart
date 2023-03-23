// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 65, 19, 173),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color.fromARGB(255, 36, 3, 112),
              statusBarIconBrightness: Brightness.light),
          leading: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 65, 19, 173),
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
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 4,
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
                          image: AssetImage("images/hotel.jpg"),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                            Color.fromARGB(255, 65, 19, 173).withOpacity(.6),
                            BlendMode.darken,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            })),
        //______________________________________________________________________________________
        bottomNavigationBar: CurvedNavigationBar(
          onTap: ((value) {}),
          backgroundColor: Color.fromARGB(255, 65, 19, 173),
          color: Color.fromARGB(255, 38, 5, 114),
          items: [
            Icon(
              Icons.home,
              color: Colors.deepOrange,
              size: 30,
            ),
            Icon(
              Icons.favorite,
              color: Colors.deepOrange,
              size: 30,
            ),
            Icon(
              Icons.settings,
              color: Colors.deepOrange,
              size: 30,
            ),
          ],
        ));
  }
}
