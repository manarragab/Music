import 'package:flutter/material.dart';

class Customplay extends StatefulWidget{

final String image;
final String txt1;
final String txt2;

  const Customplay({super.key , required this.image , required this.txt1 , required this.txt2});

  @override
  State<Customplay> createState() => _CustomplayState();
}

class _CustomplayState extends State<Customplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
  width: 200,
 
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), // Set the radius to control how rounded the corners should be
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover, 
          ),
        ),
      ),
      SizedBox(height: 4,),
      Text(widget.txt1, style: TextStyle(fontSize: 16 , color: Colors.white) , ),
      Text(widget.txt2, style: TextStyle(fontSize: 14, color: Colors.grey)),
    ],
  ),
);

  }
}