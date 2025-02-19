import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Customs/CustomPlay.dart';
import 'package:music/Views/Drower.dart';

class Playsong extends StatefulWidget {
  const Playsong({super.key});

  @override
  State<Playsong> createState() => _PlaysongState();
}

class _PlaysongState extends State<Playsong> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drower(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
               Get.toNamed("/search");
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        title: Text(
          "Now Playing",
          style: TextStyle(color: Colors.white),
        ),
      ),
      
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Customplay(image: "images/7.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/8.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/9.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/6.jpg", txt1: "Manar", txt2: "Luna"),
            
            Customplay(image: "images/7.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/8.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/9.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/6.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/7.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/8.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/7.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/8.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/9.jpg", txt1: "Manar", txt2: "Luna"),
            Customplay(image: "images/6.jpg", txt1: "Manar", txt2: "Luna"),
          ],
          ),
      )
    );
  }
}
