import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Drower.dart';

class ChooseScreen extends StatefulWidget{
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body:Container(
        
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only( top: 130),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                    
                  ),child: Image.asset(
                   "images/3.png",
                    width: 250,
                    height: 250,
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                   width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: MaterialButton(onPressed: (){
 Get.toNamed("/sign");                  
                  } , child:Text("Sign in" , style: TextStyle(color: Colors.greenAccent , fontSize: 20)) ,),
                ),
                  SizedBox(height: 20,),
                Container(
                   width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: MaterialButton(onPressed: (){
 Get.toNamed("/sign");                  
                  } , child:Text("Sign up" , style: TextStyle(color: Colors.white ,fontSize: 20)) ,),

                  
                ),
SizedBox(height: 20,),
                Text("Terms of Services  " , style: TextStyle(color: Colors.greenAccent),),
        ],),
      )
    );
  }
}