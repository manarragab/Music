import 'package:flutter/material.dart';
import 'package:music/Views/signinScreen.dart';
import 'package:music/Views/signupScreen.dart';

class Signupinscreen extends StatefulWidget {
  const Signupinscreen({super.key});

  @override
  State<Signupinscreen> createState() => _SignupinscreenState();
}

class _SignupinscreenState extends State<Signupinscreen> {
  List words = ["Sign in", "Sign up"];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
        child: ListView(
          children: [
            // Horizontal Scrollable tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 45),
                child: Row(
                  spacing: 60,
                  children: List.generate(words.length, (ind) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          i = ind;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              words[ind],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            if (i == ind)
                              Container(
                                width: words[ind].length * 10.0, // Adjust width
                                height: 2,
                                color: Colors.greenAccent,
                              ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: 20), 
            if (i == 0)
  SizedBox(
    height: 550,
    width: double.infinity, 
    child: Signinscreen(),
  ),

            if (i == 1) 
               SizedBox(
    height: 550,
    width: double.infinity, 
    child: Signupscreen(),
  ),
          ],
        ),
      ),
    );
  }
}
