
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Controller/logOut.dart';

class Drower extends StatefulWidget {
  const Drower({super.key});

  @override
  State<Drower> createState() => _DrowerState();
}

class _DrowerState extends State<Drower> {
  int counter = 7;
  int selected = 0;
  List draw = [
    {"title": "Profile"},
    {"title": "Songs"},
    {"title": "Albums"},
    {"title": "Setting"},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 22),
              height: 260,
              color: const Color.fromARGB(255, 17, 32, 58),
              width: double.infinity,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                      radius: 50, backgroundImage: AssetImage("images/8.jpg")),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "manar ragab",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'manr@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: draw.length,
                itemBuilder: (context, x) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          draw[x]['title'],
                          style: TextStyle(fontSize: 20),
                        ),
                        tileColor: selected == x ? const Color.fromARGB(255, 176, 245, 211) : null,
                        onTap: () {
                          setState(() {
                            selected = x;
                            if (x == 0) {
 Get.toNamed("/profile");                            }
                            if (x == 1) {
 Get.toNamed("/song");                            }
                            if (x == 2) {
 Get.toNamed("/albums");                            }

                            if (x == 3) {
 Get.toNamed("/setting");
                            }
                          });
                        },
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
            Container(
                width: 130,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 32, 58),
                    borderRadius: BorderRadius.circular(30)),
                child: MaterialButton(
                  onPressed: () {
                  Get.defaultDialog(
                        title: "Log Out",
                        titleStyle: TextStyle(color: Colors.red),
                       
  actions:[
    MaterialButton(onPressed: (){
        Get.back();
    } , child: Text("cancel" , style: TextStyle(color: Colors.red),), ),
    
    MaterialButton(onPressed: (){

   Logout().logout();
  Get.offAllNamed("/slider");

    } , child: Text("ok", style: TextStyle(color: Colors.green)),),
  ] ,
                      

                  );
                  },
                  child: Text(
                    "Log out",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
