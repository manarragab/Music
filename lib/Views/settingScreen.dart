import 'package:flutter/material.dart';
import 'package:music/Views/Customs/CustomSett.dart';

class SettingScreen extends StatefulWidget{
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool s=false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 17, 32, 58),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Setting" , style: TextStyle(color: Colors.white),),backgroundColor:  const Color.fromARGB(255, 17, 32, 58),),
      
      body: ListView(
        children: [
Container(
          height: 220,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 219, 218, 218))
            
          ),
         
            child: Column(
              children: [             
                Customsett(text1: "Edit Profile", icn: Icons.person, icn2: Icons.arrow_forward_ios, text2: "manar ragab"),
                Customsett(text1: "Email", icn: Icons.email, icn2: Icons.arrow_forward_ios, text2: "manar@gmail.com"),
                Customsett(text1: "Password", icn: Icons.password, icn2: Icons.arrow_forward_ios, text2: "updates 2weeks ago"),        
              ],
            )),

 Container(
          height: 170,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 219, 218, 218))
            
          ),
         
            child: Column(
              children: [             
                Customsett(text1: "Scoreboard", icn: Icons.star,sw: Switch(value: s, onChanged: (val){}),),
                Customsett(text1: "New Courses", icn: Icons.school,sw: Switch(value: s, onChanged: (val){}),),
                Customsett(text1: "Study Reminder", icn: Icons.alarm, sw: Switch(value: s, onChanged: (val){}),),        
              ],
            )),

            Container(
          height: 170,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 219, 218, 218))
            
          ),
         
            child: Column(
              children: [             
                Customsett(text1: "Help Center", icn: Icons.help_center, icn2: Icons.arrow_forward_ios),
                Customsett(text1: "Privacy & Terms", icn: Icons.privacy_tip, icn2: Icons.arrow_forward_ios),
                Customsett(text1: "Contact Us", icn: Icons.contact_emergency, icn2: Icons.arrow_forward_ios),        
              ],
            )),
            SizedBox(height: 10,),
  
        ] 
      ) ,

          
     
    );
  }
}