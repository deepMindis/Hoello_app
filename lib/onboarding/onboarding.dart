// ignore_for_file: unnecessary_string_interpolations, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testing/onboarding/data.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: onboardingdata.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Image(
                        image: AssetImage(onboardingdata[index].image!),
                        fit: BoxFit.fill,
                        width: 300,
                        height: 300,
                      ),
                      Container(
                        child: Text(onboardingdata[index].statement!),
                      ),
                    ],
                  );
                })),
          ),
          //________________________________________________________
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        onboardingdata.length,
                        (index) => AnimatedContainer(
                              duration: Duration(milliseconds: 900),
                              margin: EdgeInsets.only(right: 8),
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)),
                            )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: MaterialButton(
                    onPressed: (() {}),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: (() {}),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),

      //__________________________________________________________
    );
  }
}
