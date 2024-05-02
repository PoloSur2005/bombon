import 'package:flutter/material.dart';

class GenericTextField extends StatelessWidget {
  final String labelText;
  final double width;
  final IconData icon;
  const GenericTextField(
      {super.key, this.labelText = '', this.width = 400, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
