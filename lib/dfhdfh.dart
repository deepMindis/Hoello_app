import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> images = [
  'images/bookingbroccess/booking/deulexroom.jpeg',
  'images/bookingbroccess/booking/royalroom.jpeg',
  'images/bookingbroccess/booking/singleroom.jpeg',
  'images/bookingbroccess/booking/royalroom.jpeg',
];

class BannerComponent extends StatelessWidget {
  const BannerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
          images.length, (index) => Image(image: AssetImage(images[index]))),
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
    );
  }
}
