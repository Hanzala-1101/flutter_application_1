import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.alphaBlend(Colors.white, Colors.blue),
        child: Column(
          children: [
            Image.asset(
              "assets/images/chu.jpg",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rehan umar:25 kaam:coatmaker hobbies: logo ko bewakuf bana na",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter the text",
                      labelText: "Enter your name",
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter the text",
                      labelText: "Enter your password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("login"),
              style: TextButton.styleFrom(
                  primary: Color.lerp(Colors.black, Colors.black, 5.3),
                  shadowColor:
                      Color.alphaBlend(Colors.deepPurple, Colors.greenAccent),
                  fixedSize: Size(100, 20)),
              onPressed: () {
                print("good job");
              },
            ),
          ],
        ));
  }
}
