import 'package:flutter/material.dart';
import 'package:music/Views/Drower.dart';

class Forgetpassscreen extends StatefulWidget {
  const Forgetpassscreen({super.key});

  @override
  State<Forgetpassscreen> createState() => _ForgetpassscreenState();
}

class _ForgetpassscreenState extends State<Forgetpassscreen> {
  String email = '';
  String password = '';
  String confirmPassword = ''; 
  final _formKey = GlobalKey<FormState>();
  bool secure = true;
  
  bool secure2 = true;

 RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@gmail\.com$',
  );

 

RegExp passwordRegExp = RegExp(
  r'^(?=(?:[^A-Z]*[A-Z]){1}[^A-Z]*$)(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&^()#!~:<>{}\[\].]{1})[A-Za-z\d@$!%*?&^()#!~:<>{}\[\].]{8,}$',
);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drower(),
      backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Forget Password", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 40),
        child: Form(
          key: _formKey,  // Adding form key for validation
          child: ListView(
            children: [
              // Email Input Field
              TextFormField(
                onChanged: (val) {
                  email = val;
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter email please";
                  }
                  if (!emailRegExp.hasMatch(val)) {
                    return "Invalid email format";
                  }
                  return null; 
                },
               style: TextStyle(color: Colors.white,fontSize: 18),

                decoration: InputDecoration(
                  hintText: "Your Email Address",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Password Input Field
              TextFormField(
                obscureText: secure,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter password please";
                  }
                  if (!passwordRegExp.hasMatch(val)) {
                    return "Inavalid password, ex)Password!123";
                  
                  }
                  return null;
                },
                 style: TextStyle(color: Colors.white,fontSize: 18),

                decoration: InputDecoration(
                  hintText: "Your Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secure = !secure;
                      });
                    },
                    icon: Icon(
                      secure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Confirm Password Input Field
              TextFormField(
                obscureText: secure2,
                onChanged: (val) {
                  setState(() {
                    confirmPassword = val;
                  });
                },
                validator: (val) {
                  if (val!.isEmpty) {
                    return "confirm your password please";
                  }
                  if (val != password) {
                    return "Passwords do not match";
                  }
                  return null;
                },

               style: TextStyle(color: Colors.white,fontSize: 18),
               
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secure2 = !secure2;
                      });
                    },
                    icon: Icon(
                      secure2 ? Icons.visibility : Icons.visibility_off,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),

              Container(

  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                child: MaterialButton(onPressed: (){
                    if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.greenAccent,
                            content: Text('Login Successful'),
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor:
                                const Color.fromARGB(255, 243, 115, 106),
                            content:
                                Text('Please fill out all fields correctly'),
                          ));
                        }
                }, child: Text("Reset My Password", style: TextStyle(color: const Color.fromARGB(255, 17, 32, 58),),),),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
