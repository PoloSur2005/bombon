import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const GenericTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.merriweatherSans(),
        ));
  }
}
