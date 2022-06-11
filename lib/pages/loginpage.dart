import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.alphaBlend(Colors.white, Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/nature.jpg",
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Nature is god gifted do not destroy $name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.redAccent,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      shadowColor: Color.alphaBlend(
                          Colors.deepPurple, Colors.greenAccent),
                      fixedSize: Size(100, 20)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
