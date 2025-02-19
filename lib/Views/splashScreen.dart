import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/sliderScreen.dart';

class Splashscreen extends StatefulWidget{
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}



class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
       Get.off(Sliderscreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body: Container(
        margin: EdgeInsets.only(top: 300 , left: 120),
        child: Column(children: [
        Image.asset("images/logo.png" , width: 130,height: 130,),
        Text("Music Podcast" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 , color: Colors.white),)
      ],),) ,
    );
  }
}