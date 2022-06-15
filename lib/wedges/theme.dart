import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static ThemeData get themeData => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.light,
      );
}

class Darktheme {
  static ThemeData get themeData => ThemeData(
        fontFamily: GoogleFonts.akronim().fontFamily,
        primarySwatch: Colors.teal,
      );
}
