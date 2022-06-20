import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData get lightheme => ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.light,
      );

  static ThemeData get themeblue => ThemeData(
        fontFamily: GoogleFonts.akronim().fontFamily,
        primarySwatch: Colors.teal,
      );

  static Color greenish = const Color(0x650C720D);
  static Color lightbluesh = const Color(0xFF0000CC);
  static Color greenlight = const Color(0xFF009000);
  static Color redish = const Color(0xB0620F20);
}
