import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customsongs extends StatefulWidget{

  final String txt1;
  final String subTxt;

  const Customsongs({super.key , required this.subTxt , required this.txt1});

  @override
  State<Customsongs> createState() => _CustomsongsState();
}

class _CustomsongsState extends State<Customsongs> {
  bool select=false;
  bool selec1=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
           onTap: (){
   selec1=!selec1;
 Get.off("/song");          },
       
          title: Text(widget.txt1 , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),),
          subtitle: Text(widget.subTxt , style: TextStyle(color: const Color.fromARGB(255, 206, 205, 205)),),
          leading: Icon(Icons.audio_file , color: Colors.white,),
          trailing: IconButton(onPressed: (){
            setState(() {
              select=!select;
            });
          }, icon: Icon(color: Colors.red,select?Icons.favorite : Icons.favorite_outline ,),),
          
        ),
        Container(
          margin: EdgeInsets.only(left: 45),
          child: Divider()),
      ],
    );
  }
}