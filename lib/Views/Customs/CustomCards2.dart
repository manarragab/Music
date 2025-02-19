import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customcards2 extends StatefulWidget {
  final String image;
  final String txt1;
  final int i;
  final String txt2;

  const Customcards2({
    super.key,
    required this.image,
    required this.txt1,
    required this.txt2,
    required this.i,
  });

  @override
  State<Customcards2> createState() => _Customcards2State();
}

class _Customcards2State extends State<Customcards2> {
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
 Get.toNamed("/play");                  });
                },
                child: Container(
                  
                  width: 165,
                  height:110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Set the radius to control how rounded the corners should be
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.txt1,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        love = !love;
                      });
                    },
                    icon: Icon(color: Colors.red,love ? Icons.favorite : Icons.favorite_border),
                  ),
                  Text(
                    "${widget.i}",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline , color: Colors.greenAccent,),
                  ),
                  Text(
                    widget.txt2,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          
        
            ),
      );
  }
}
