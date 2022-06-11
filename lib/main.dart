import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.HomeRoutes: (context) => HomePage(),
        MyRoutes.LoginRoutes: (context) => Loginpage(),
      },
    );
  }
}
