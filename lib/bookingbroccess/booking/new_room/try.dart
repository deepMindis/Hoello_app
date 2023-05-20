// ignore_for_file: sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testing/bookingbroccess/booking/new_room/data.dart';
import 'package:testing/bookingbroccess/booking/new_room/feature_item.dart';
import 'package:testing/bookingbroccess/booking/new_room/recommend_item.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  List<String> images = [
    'images/bookingbroccess/booking/deulexroom.jpeg',
    'images/bookingbroccess/booking/royalroom.jpeg',
    'images/bookingbroccess/booking/singleroom.jpeg',
    'images/bookingbroccess/booking/royalroom.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 65, 19, 173),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 19, 173),
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: CarouselSlider(
                items: List.generate(
                    images.length,
                    (index) => Image(
                          image: AssetImage(images[index]),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        )),
                options: CarouselOptions(
                  height: 250.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Text(
                "Featured",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                disableCenter: true,
                viewportFraction: .75,
              ),
              items: List.generate(
                features.length,
                (index) => FeatureItem(
                  data: features[index],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "OFFERS",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  recommends.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: RecommendItem(
                      data: recommends[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //________________________________________________________________________

  //_______________________________________________________________________________

  //______________________________________________________________________
}
