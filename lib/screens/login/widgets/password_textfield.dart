import 'package:flutter/material.dart';

class PasswordTextfield extends StatelessWidget {
  final String labelText;
  final double width;
  final IconData icon;
  const PasswordTextfield(
      {super.key, this.labelText = '', this.width = 400, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          prefixIcon: Icon(icon),
          suffixIcon: IconButton(
            icon: const Icon(Icons.visibility),
            onPressed: () {
              // TODO: Implement toggle password visibility
            },
          ),
        ),
      ),
    );
  }
}
