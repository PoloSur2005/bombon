import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  final String labelText;
  final double width;
  final IconData icon;

  const PasswordTextfield({
    Key? key,
    this.labelText = '',
    this.width = 400,
    required this.icon,
  }) : super(key: key);

  @override
  _PasswordTextfieldState createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.labelText,
          prefixIcon: Icon(widget.icon),
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
