import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;

  const GenericButton(
      {super.key,
      required this.icon,
      required this.text,
      this.height = 45.0,
      this.width = 250.0,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(width, height)),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(63, 95, 144, 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            Text(
              text,
              style: GoogleFonts.merriweatherSans(),
            ),
          ],
        ));
  }
}
