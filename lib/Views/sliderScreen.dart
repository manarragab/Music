// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Controller/confirmUserData.dart';
import 'package:music/Views/chooseScreen.dart';
import 'package:music/Views/signupScreen.dart';
import 'package:music/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Sliderscreen extends StatefulWidget {
  const Sliderscreen({super.key});

  @override
  State<Sliderscreen> createState() => _SliderscreenState();
}

class _SliderscreenState extends State<Sliderscreen> {
  final PageController cont = PageController();
  int i = 0;

  final List<Map<String, String>> pages = [
    {
      "image": "images/1.png",
      "text1": "manar ragab zain",
      "text2": "ff dvd oeiejbd di dkbdvd",
      "text3": "ff dvd oevd dkbdvd",
    },
    {
      "image": "images/2.png",
      "text1": "lina ahmed ragab",
      "text2": "ff dvd oeiejbd di dkbdvd",
      "text3": "ff dvd oevd dkbdvd",
    },
    {
      "image": "images/3.png",
      "text1": "makka mohammed ragab",
      "text2": "ff dvd oeiejbd di dkbdvd",
      "text3": "ff dvd oevd dkbdvd",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body: PageView.builder(
        controller: cont,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: EdgeInsets.all(9),
              margin: EdgeInsets.only(top: 230),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      pages[index]["image"]!,
                      width: 220,
                      height: 220,
                    ),
                  ),
                  Text(
                    pages[index]['text1']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    pages[index]['text2']!,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    pages[index]['text3']!,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 165),
                  SmoothPageIndicator(
                    controller: cont,
                    count: pages.length,
                    effect: WormEffect(
                      dotColor: Colors.white,
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed: () async {
                        if (index == pages.length - 1) {
                          if (p != null) {
                            String? email = p!.getString("email");
                            String? password = p!.getString("password");

                            if (email != null && password != null) {
                              print(email);
                              print(password);

                              Get.toNamed("/home");
                            } else {
                              print("pref null");
                              Get.toNamed("/choose");
                            }
                          } else {
                            print("SharedPreferences is not initialized.");
                            Get.toNamed("/choose");
                          }
                        } else {
                          cont.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        index == pages.length - 1 ? "Get Started" : "Next",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 17, 32, 58),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
