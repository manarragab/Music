import 'package:flutter/material.dart';
import 'package:music/Views/Customs/CustomProfile.dart';
import 'package:music/Views/Drower.dart'; // Assuming CustomProfile.dart exists

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("images/3.png"), // Adjust image path
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("images/3.png"), // Adjust image path
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Manar Ragab",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "35",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      Text(
                        "PlayList",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "104",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      Text(
                        "Likes",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "59",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.topLeft  ,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Followed Artists',style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  childAspectRatio: 1.0,
                ),
                itemCount: 8, 
                itemBuilder: (context, i) {
                  return Customprofile(
                    image: "images/7.jpg", 
                    txt1: "manar ragab",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}