import 'package:flutter/material.dart';

class   Customprofile extends StatefulWidget {
  final String image;
  final String txt1;


  const Customprofile({
    super.key,
    required this.image,
    required this.txt1,

  });

  @override
  State<Customprofile> createState() => _CustomprofileState();
}

class _CustomprofileState extends State<Customprofile> {
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        child: Column(
            children: [
              Container(
                  
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
              
              SizedBox(height: 5),
              Text(
                widget.txt1,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              
            ],
        
      ),
      );
  }
}
