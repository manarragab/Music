import 'package:flutter/material.dart';

class Customsett extends StatefulWidget {
  final String text1;
  final IconData icn;
  final IconData? icn2;  
  final String? text2;   
  final Switch? sw;       

  const Customsett({
    super.key,
    required this.text1,
    required this.icn,
    this.icn2,
    this.text2,
    this.sw,
  });

  @override
  State<Customsett> createState() => _CustomsettState();
}

class _CustomsettState extends State<Customsett> {

  bool s=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
          ),
          child: Icon(widget.icn, color: Colors.white), 
        ),
        title: Text(widget.text1 , style: TextStyle(color: Colors.white),),
        subtitle: widget.text2 != null
            ? Text(widget.text2! , style: TextStyle(color: Colors.grey[500]),) 
            : null, 
        trailing: widget.sw != null
            ? Switch(activeColor: Colors.greenAccent,value: s, onChanged: (val){
              setState(() {
                s=val;
              } );
            }) 
            : (widget.icn2 != null
                ? Icon(widget.icn2, size: 20, color: Colors.grey[600],)
                : null),
      ),
    );
  }
}
