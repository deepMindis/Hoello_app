// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';

import 'custom_image.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    Key? key,
    required this.data,
    this.width = 280,
    this.height = 250,
    this.onTap,
    this.onTapFavorite,
  }) : super(key: key);

  final data;
  final double width;
  final double height;
  final GestureTapCallback? onTapFavorite;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('hello');
      },
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              data["image"],
              width: double.infinity,
              height: 190,
              radius: 15,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: width - 20,
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: const Text(
                'Single Room',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
