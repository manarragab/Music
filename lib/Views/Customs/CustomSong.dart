import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customsong extends StatefulWidget{
  final List<String> txt ;
final int count;
  const Customsong({super.key , required this.txt , required this.count});
  
  @override
  State<Customsong> createState() => _CustomsongState();
}

class _CustomsongState extends State<Customsong> {
 Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    itemCount:widget.count ,
    itemBuilder: (context , i){
      return InkWell(
        onTap: (){
          setState(() {
 Get.off("/play");     
      });
        },
        child: Container(
          margin: EdgeInsets.all(6),
         
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: getRandomColor(),
            
          ),
          child: Center(child: Text(widget.txt[i] , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:  Colors.white),)),
        ),
      );
    }
    
    
    
    );
  }
}