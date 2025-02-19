
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Customs/CustomImages.dart';

class Customcards1 extends StatefulWidget{

final String image;
final String txt1;
final String txt2;

  const Customcards1({super.key , required this.image , required this.txt1 , required this.txt2});

  @override
  State<Customcards1> createState() => _Customcards1State();
}

class _Customcards1State extends State<Customcards1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
  width: 200,
 
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(
        onTap: (){
         
         Get.toNamed("/calling");
         
        },
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Set the radius to control how rounded the corners should be
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover, // Ensures the image covers the container while maintaining aspect ratio
            ),
          ),
        ),
      ),
      SizedBox(height: 4,),
      Text(widget.txt1, style: TextStyle(fontSize: 16 , color: Colors.white) , ),
      Text(widget.txt2, style: TextStyle(fontSize: 15, color: Colors.grey)),
    ],
  ),
);

  }
}


class Calling extends StatefulWidget{
  const Calling({super.key});

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),

        child:   Stack(
          children:[
ListView(
          scrollDirection: Axis.vertical,
            children: [
              Customimages(image: "images/4.jpg", text: "manar ragab"),
              Customimages(image: "images/5.jpg", text: "hamdy ragab"),
              Customimages(image: "images/6.jpg", text: "taghreed ragab"),
              Customimages(image: "images/7.jpg", text: "ahmed ragab"),
              Customimages(image: "images/8.jpg", text: "makka ragab"),
              Customimages(image: "images/9.jpg", text: "lina ragab"),
              Customimages(image: "images/7.jpg", text: "mariam ragab"),
              Customimages(image: "images/4.jpg", text: "manar ragab"),
          
          
            ],
          ),

          Positioned(
            top: 10,
            right: 7,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black
              ),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.close , color: Colors.white,)),
            ),
          )

          ] 
        )
        
      ),
    );
  }
}