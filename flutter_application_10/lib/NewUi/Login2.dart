import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_10/NewUi/Line.dart';
import 'package:flutter_application_10/NewUi/Line2.dart';
import 'package:flutter_application_10/NewUi/Login.dart';
import 'package:flutter_application_10/auth.dart';

class Login_PageT2 extends StatefulWidget {
  const Login_PageT2({super.key});

  @override
  State<Login_PageT2> createState() => _Login_PageT2State();
}

class _Login_PageT2State extends State<Login_PageT2> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    bool islogin = false;
    final _formkey = GlobalKey<FormState>();
    String email = '';
    String password = '';
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 29, 53),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          reverse: true,
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: Customshape1(),
                      child: Container(
                        height: 280,
                        width: w,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 80, top: 80),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                "https://letsenhance.io/static/b8eda2f8914d307d52f725199fb0c5e6/62e7b/MainBefore.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 100,
                        width: 150,
                        child: Text(
                          "Welcome Back!",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.9),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          key: ValueKey('email'),
                          validator: (value) {
                            if (!value.toString().contains('@')) {
                              return "Invalid email";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              email = value!;
                            });
                          },
                          style: TextStyle(color: Colors.orange),
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.person),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.orange),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.orange))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          key: ValueKey('password'),
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return "Length must be greater than 6";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              password = value!;
                            });
                          },
                          style: TextStyle(color: Colors.orange),
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.key,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.orange),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.white)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.orange))),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                )),
                            SizedBox(
                              width: 200,
                              height: 65,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    _formkey.currentState!.save();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login_PageT(),
                                        ));
                                  }
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
