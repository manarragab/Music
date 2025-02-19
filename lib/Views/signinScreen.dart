import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/Controller/confirmUserData.dart';
import 'package:music/Controller/saveUserData.dart';
import 'package:music/Middleware/login_middleware.dart';
import 'package:music/main.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  bool check = false;
  String email = '';
  String password = '';

  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  bool secure = true;

  RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@gmail\.com$',
  );

  RegExp passwordRegExp = RegExp(
    r'^(?=(?:[^A-Z]*[A-Z]){1,}[^A-Z]*$)(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&^()#!~:<>{}\[\].]{1})[A-Za-z\d@$!%*?&^()#!~:<>{}\[\].]{8,}$',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 32, 58),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 25),
          child: Form(
            key: _formKey1,
            child: ListView(
              children: [
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
                    return null; // Return null if no error
                  },
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Your Email Address",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
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
                SizedBox(height: 15),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Get.toNamed("/forgetpass");
                      });
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 166, 245, 207)),
                      textAlign: TextAlign.right,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: check,
                      onChanged: (val) {
                        setState(() {
                          check = val!;
                        });
                      },
                      activeColor: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Rememeber Me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: MaterialButton(
                        onPressed: () async {
                          if (_formKey1.currentState!.validate()) {
                          

                            String? savedEmail = p!.getString("email");
                            String? savedPassword = p!.getString("password");

                            if (savedEmail == null || savedPassword == null) {
                              Get.snackbar(
                                "Login Failed",
                                "Unauthorized. NOT found this user.",
                                backgroundColor: Colors.redAccent,
                              );
                              Get.toNamed("signup");
                              return;
                            }

                            bool isLogged = await Confirmuserdata()
                                .confirmData(email, password);

                            if (isLogged) {
                              Get.snackbar(
                                "Login success",
                                "Email and password matched.",
                                backgroundColor: Colors.greenAccent,
                              );
                              LoginMiddleware();
                              Get.toNamed("/home");
                            } else {
                              Get.snackbar(
                                "Login Failed",
                                "Email and password do not match.",
                                backgroundColor: Colors.redAccent,
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor:
                                  const Color.fromARGB(255, 243, 115, 106),
                              content:
                                  Text('Please fill out all fields correctly'),
                            ));
                          }
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 17, 32, 58),
                          ),
                        ))),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Text(
                        " OR ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.grey,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 35),
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 57, 156, 108),
                            borderRadius: BorderRadius.circular(30)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                        width: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 76, 226, 154),
                            borderRadius: BorderRadius.circular(30)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Twitter",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
