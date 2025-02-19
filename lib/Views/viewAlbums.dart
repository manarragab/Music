import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Customs/CustomCards1.dart';
import 'package:music/Views/Customs/CustomSongs.dart';
import 'package:music/Views/Drower.dart';

class Viewalbums extends StatefulWidget {
  const Viewalbums({super.key});

  @override
  State<Viewalbums> createState() => _ViewalbumsState();
}

class _ViewalbumsState extends State<Viewalbums> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        title: Text(
          "Songs",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
               Get.toNamed("/search");
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Popular Songs",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),

              // Horizontal scrollable ListView inside a container with a fixed height
              SizedBox(
                height: 160, // Fixed height for the horizontal scroll area
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Customcards1(
                        image: "images/4.jpg",
                        txt1: "Sound Of Water",
                        txt2: "Manar Ragab"),
                    Customcards1(
                        image: "images/5.jpg",
                        txt1: "Sound Of Water",
                        txt2: "Manar Ragab"),
                    Customcards1(
                        image: "images/4.jpg",
                        txt1: "Sound Of Water",
                        txt2: "Manar Ragab"),
                    Customcards1(
                        image: "images/5.jpg",
                        txt1: "Sound Of Water",
                        txt2: "Manar Ragab"),
                    Customcards1(
                        image: "images/4.jpg",
                        txt1: "Sound Of Water",
                        txt2: "Manar Ragab"),
                  ],
                ),
              ),

              Divider(),
              Text(
                "Friend Favourite Songs",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white), // Ensure text is visible
              ),
              SizedBox(height: 15),

              // Using ListView for dynamic content without Expanded
              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: "Midnight Echoes"),
                  Customsongs(subTxt: "Luna Blue", txt1: " Echoes"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
