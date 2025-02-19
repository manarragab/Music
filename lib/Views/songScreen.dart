
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Views/Drower.dart';

class Songscreen extends StatefulWidget {
  const Songscreen({super.key});

  @override
  State<Songscreen> createState() => _SongscreenState();
}

class _SongscreenState extends State<Songscreen> {
  final PageController cont = PageController();
  int i = 0;

  final List<Map<String, String>> pages = [
    {
      "image": "images/7.jpg",
      "text1": "manar ragab zain",
      "text2": "oeiejbd di dkbdvd",
    },
    {
      "image": "images/8.jpg",
      "text1": "lina ahmed ragab",
      "text2": "ff dv di dkbdvd",
    },
    {
      "image": "images/9.jpg",
      "text1": "makka mohammed ragab",
      "text2": "ff dvd oeiejbd d",
    },
       {
      "image": "images/6.jpg",
      "text1": "taghreed ragab zain",
      "text2": "oeiejbd di dkbdvd",
    },
       {
      "image": "images/9.jpg",
      "text1": "mariam ragab zain",
      "text2": "oeiejbd fgggg dkbdvd",
    },
  ];
  
  bool messg=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body: PageView.builder(
        controller: cont,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(9),
            margin: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                // Image of the song
            Container(
  width: 270,
  height: 400,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(17),
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(17),
    child: Image.asset(
      pages[index]["image"]!,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ),
  ),
),


SizedBox(height: 35,),
                Text(
                  pages[index]['text1']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  pages[index]['text2']!,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 120 , width: 100,),

          

          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


             
                     Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                         shape: BoxShape.circle,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            if (index == 0) {
                            Navigator.of(context).pop();
                            } else {
                              cont.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child:Icon(Icons.arrow_back_ios)
                          ),
                        ),
                    ),

                    Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                         shape: BoxShape.circle,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                        
                            if (index == pages.length - 1) {
                             Get.back();
                            } else {
                              cont.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child:Icon(Icons.arrow_forward_ios)
                          ),
                        ),
                    ),

               

                  ],
                ),
              ],  ),
              
            
          );
        },
      ),
    );
  }
}
