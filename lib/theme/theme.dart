import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle merriweatherSans = GoogleFonts.merriweatherSans();
final Color primaryColor = Color.fromARGB(255, 63, 95, 144);

ThemeData defaultTheme() {
  return ThemeData(
      useMaterial3: true,
      primaryColor: primaryColor,
      textTheme: TextTheme(
          headline1: GoogleFonts.merriweatherSans(
              fontSize: 50, fontWeight: FontWeight.w200, color: primaryColor)));
}
