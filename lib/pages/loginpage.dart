import 'dart:ui';

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.alphaBlend(Colors.white, Colors.blue),
        child: Column(
          children: [
            Image.asset(
              "assets/images/rehan.png",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Rehan umar:25 kaam:coatmaker hobbies: logo ko bewakuf bana na",
              style: TextStyle(
                
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ));
  }
}
