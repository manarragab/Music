import 'package:flutter/material.dart';
import 'package:music/Views/Drower.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_forward))
        ],
        iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 17, 32, 58),
),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
     body: Padding(padding: 
     EdgeInsets.all(20),
     child: Container(
      margin: EdgeInsets.only(left: 30),
              height: 50,
              width: 300,
              child: TextFormField(
                onTap: (){
                  setState(() {
                    showSearch(context: context, delegate: Search());
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search song",
                  hintStyle: TextStyle(color: const Color.fromARGB(255, 175, 243, 210)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                ),
              ),
            ),
     
     
     ),
     
    );
  }
}



class Search extends SearchDelegate{

List ob=[
  "tamer hosny" , "elisa" ,"shreen" , "amr diab", "angham","medhat saleh","shadia","mohammed foad"
];
List? filter;

  @override
  List<Widget>? buildActions(BuildContext context) {
    
    return[
      IconButton(onPressed: (){
        query="";
      }, icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return  IconButton(onPressed: (){
     close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }
  @override
  Widget buildResults(BuildContext context) {
    return  Container(
   
      alignment: Alignment.center,
      width: double.infinity,
      height: 500,
      color:  const Color.fromARGB(255, 17, 32, 58),
      child:   Text(' Songer $query' ,style: TextStyle(color: Colors.greenAccent,fontSize: 30 , ),textAlign: TextAlign.center,),
    );
  
     
    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   if(query ==""){

     return ListView.builder(
      itemCount: ob.length,
      itemBuilder: (BuildContext context, int i) { 
        return InkWell(
          onTap: (){
            showResults(context,);
          },
          child: Card(
            color:const Color.fromARGB(255, 17, 32, 58) ,
            elevation: 7,
            shadowColor: Colors.greenAccent,
            margin: EdgeInsets.all(3),
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Text(ob[i] , style: TextStyle(color: Colors.white,fontSize: 20),),
         ),

        ),);
       },

      
    );
   } 
   else{  
    filter = ob.where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();

     return ListView.builder(
      itemCount: filter!.length,
      itemBuilder: (BuildContext context, int i) { 
        return InkWell(
          onTap: (){
            showResults(context);
          },
          child: Card( 
            color:const Color.fromARGB(255, 17, 32, 58) ,
            elevation: 7,
            shadowColor: Colors.greenAccent,
            margin: EdgeInsets.all(3),
         
           child: Padding(
             padding: const EdgeInsets.all(8.0),
            child: Text(ob[i] , style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
          
          ),
        );
      });}}}
       
