import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePage extends StatelessWidget {
  final double fontsize;
  final String text;
  const TitlePage({
    super.key,
    this.fontsize = 40,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.rowdies(
            fontWeight: FontWeight.w200,
            fontSize: fontsize,
            color: const Color.fromARGB(255, 63, 95, 144)));
  }
}
