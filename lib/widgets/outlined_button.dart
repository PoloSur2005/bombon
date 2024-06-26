import 'package:flutter/material.dart';

class GenericOutlinedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final IconData icon;
  final double width;
  final double height;
  const GenericOutlinedButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.icon,
      this.width = 250,
      this.height = 45});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(width, height)),
            foregroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(63, 95, 144, 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            Text(text),
          ],
        ));
  }
}
