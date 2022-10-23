// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // color: Colors.amber,
              child: Image(
                  fit: BoxFit.fill, image: AssetImage("img/register.png")),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  // color: Colors.red,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 320, 0),
                      child: Image(image: AssetImage("img/back.png")),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 200, 0),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  //username
                  width: 301,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xffd4d4d4),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                    color: Color(0xfffefefe),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, right: 200),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration.collapsed(
                        hintText: "Username",
                        hintStyle:
                            TextStyle(color: Color(0xffa4a4a4), fontSize: 15),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  //password
                  width: 301,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xffd4d4d4),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                    color: Color(0xfffefefe),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, right: 200),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Color(0xffa4a4a4), fontSize: 15),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 20,
                  child: Text(
                    "Repeat password :",
                    style: TextStyle(
                      color: Color(0xffa4a4a4),
                      fontSize: 15,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  //password
                  width: 301,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xffd4d4d4),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                    color: Color(0xfffefefe),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, right: 200),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Color(0xffa4a4a4), fontSize: 15),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  //log in
                  width: 305,
                  height: 40,
                  child: TextButton(
                    onPressed: () async {},
                    child:
                        Text("Sign Up", style: TextStyle(color: Colors.white)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xfffeffff),
                      width: 1,
                    ),
                    color: Color(0xff006bff),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Or",
                      style: TextStyle(
                        color: Color(0xff8a8a8a),
                      ),
                    ),
                  ),
                ),
                Container(
                  //sign up
                  width: 301,
                  height: 39,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Log In",
                        style: TextStyle(color: Color(0xff006bff))),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Color(0xff006bff),
                      width: 1,
                    ),
                    color: Color(0xfffefefe),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
