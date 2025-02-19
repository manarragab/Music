import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Customs/CustomCards1.dart';
import 'package:music/Views/Customs/CustomCards2.dart';
import 'package:music/Views/Customs/CustomSong.dart';
import 'package:music/Views/Drower.dart'; // Ensure the CustomCards1 widget is defined properly

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool select1=false;
   bool select2=false; 
   bool select3=false; 
   bool select4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          // Search TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 50,
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search album",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          // Circle Avatar with Image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("images/3.png"),
            ),
          ),
        ],
      ),
      body: Stack(children: [
 SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Hot Recommended",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
        
                // Horizontal scrollable ListView
                SizedBox(
                  
                  height: 160, // Adjust the height as needed for your card display
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Customcards1(image: "images/4.jpg", txt1: "Sound Of Water", txt2: "Manar Ragab"),
                      Customcards1(image: "images/5.jpg", txt1: "Sound Of Water", txt2: "Manar Ragab"),
                      Customcards1(image: "images/4.jpg", txt1: "Sound Of Water", txt2: "Manar Ragab"),
                      Customcards1(image: "images/5.jpg", txt1: "Sound Of Water", txt2: "Manar Ragab"),
                      Customcards1(image: "images/4.jpg", txt1: "Sound Of Water", txt2: "Manar Ragab"),
                    ],
                  ),
                ),
        
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
        Text("HOT playlists" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
        GestureDetector(
          onTap: (){
            setState(() {
 Get.toNamed("/albums");            });
          },
          child: Text("View All" , style: TextStyle(color: Colors.greenAccent),)),
        
        
        
                ],),
        SizedBox(height: 15,),
                  SizedBox(
                    height: 500,
                  
                    child: GridView(
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        children: [
                               Customcards2(image: "images/6.jpg", txt1: "Sound Of Water", txt2: "30 tracks", i: 251),
                          Customcards2(image: "images/7.jpg", txt1: "The For Carnation", txt2: "20 tracks", i: 251),
                        Customcards2(image: "images/8.jpg", txt1: "Sound Of Water", txt2: "30 tracks", i: 251),
                          Customcards2(image: "images/9.jpg", txt1: "The For Carnation", txt2: "20 tracks", i: 251),
                        Customcards2(image: "images/6.jpg", txt1: "Sound Of Water", txt2: "30 tracks", i: 251),
                          Customcards2(image: "images/7.jpg", txt1: "The For Carnation", txt2: "20 tracks", i: 251),
                         Customcards2(image: "images/8.jpg", txt1: "Sound Of Water", txt2: "30 tracks", i: 251),
                          Customcards2(image: "images/9.jpg", txt1: "The For Carnation", txt2: "20 tracks", i: 251),
                          Customcards2(image: "images/6.jpg", txt1: "The For Carnation", txt2: "20 tracks", i: 251),
                      
                        ],
                      ),
                  )
               
              ],
            ),
          ),
        ),
      

      Positioned(
        bottom: 10,
        right: 30,
        left: 30,
        child: Opacity(
          opacity: 0.9,
          child: Container(
           
      padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 17, 32, 58),
            
            borderRadius: BorderRadius.circular(36),
            
          ),
               

child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
      onPressed: () {
        setState(() {
          select1 = !select1;
          select2 = false;
          select3 = false;
          select4 = false;
        });
 Get.toNamed("/home");
      },
      icon: Icon(
        Icons.home,
        color: select1 ? Colors.greenAccent : Colors.white, // Change color based on selection
      ),
    ),
Text(" Discover" ,style: TextStyle(fontSize: 13,color: select1?Colors.greenAccent: Colors.white),)

  ],),
    Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
      onPressed: () {
        setState(() {
          select1 = false;
          select2 = !select2;
          select3 = false;
          select4 = false;
        });
 Get.toNamed("/iconsong");      },
      icon: Icon(
        Icons.search,
        color: select2 ? Colors.greenAccent : Colors.white, // Change color based on selection
      ),
    ),
Text("Song" ,style: TextStyle(fontSize: 13,color: select2?Colors.greenAccent: Colors.white),)

  ],),
  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
      onPressed: () {
        setState(() {
          select1 = false;
          select2 = false;
          select3 = !select3;
          select4 = false;
        });
 Get.toNamed("/albums");
      },
      icon: Icon(
        Icons.circle_notifications,
        color: select3 ? Colors.greenAccent : Colors.white, // Change color based on selection
      ),
    ),
Text("Albums" ,style: TextStyle(fontSize: 13,color: select3?Colors.greenAccent: Colors.white),)

  ],),Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButton(
      onPressed: () {
        setState(() {
          select1 = false;
          select2 = false;
          select3 = false;
          select4 = !select4;
        });
 Get.toNamed("/profile");
      },
      icon: Icon(
        Icons.person,
        color: select4 ? Colors.greenAccent : Colors.white, // Change color based on selection
      ),
    ),
Text("Profile " ,style: TextStyle(fontSize: 13,color: select4?Colors.greenAccent: Colors.white),)

  ],),
  ],
),

        ))

),],
      ),
    );
  }
}


class Getsongs extends StatelessWidget{
  const Getsongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color.fromARGB(255, 17, 32, 58),

      appBar: AppBar(
        leading: IconButton(onPressed: (){
 Get.toNamed("/home");
         }, icon: Icon(Icons.arrow_back),),
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        iconTheme: IconThemeData(color:Colors.white,
        
),
      ),
      body: Container(
        
        padding: EdgeInsets.all(5),
        child: Customsong(txt: ["manar" , "makka" ,"lina" ,"taghreed","manar" , "makka" ,"lina" ,"taghreed","manar" , "makka" ,], count: 10),
      ),
    );
  }



}
