import 'package:flutter/material.dart';

class Customimages extends StatefulWidget {
  final String image;  // Image path
  final String text;   // Text to display on top of the image

  // Constructor to accept image and text values
  const Customimages({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  State<Customimages> createState() => _CustomimagesState();
}

class _CustomimagesState extends State<Customimages> {
  bool isSelected = false;  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  opacity: isSelected?1.0:0.7,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              bottom: 60,
              child: Text(
                widget.text,  
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (isSelected)
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.greenAccent,
                
                  size: 40,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
