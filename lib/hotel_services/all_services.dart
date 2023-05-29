// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AllServices extends StatelessWidget {
  AllServices({super.key});

  List servicse = [
    {
      'title': 'Car rental',
      'image': 'images/services_icons/car_rental.png',
    },
    {
      'title': 'Order meal',
      'image': 'images/services_icons/cooking.png',
    },
    {
      'title': 'Concierge',
      'image': 'images/services_icons/Concierge.png',
    },
    {
      'title': 'Doctor on call',
      'image': 'images/services_icons/doctor.png',
    },
    {
      'title': 'Dry cleaning',
      'image': 'images/services_icons/dry.png',
    },
    {
      'title': 'Ironing',
      'image': 'images/services_icons/iron.png',
    },
    {
      'title': 'Laundry',
      'image': 'images/services_icons/Laundry.png',
    },
    {
      'title': 'Shoeshine',
      'image': 'images/services_icons/Shoeshine.png',
    },
    {
      'title': 'Bar',
      'image': 'images/services_icons/Bar.png',
    },
    {
      'title': 'Fitness room',
      'image': 'images/services_icons/Fitness.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 65, 19, 173),
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Color.fromARGB(255, 36, 3, 112),
              statusBarIconBrightness: Brightness.light),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
          ),
          title: const Text(
            "All Services",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 65, 19, 173),
        ),
        //__________________________________________________
        body: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: servicse.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage(servicse[index]['image']),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        servicse[index]['title'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
