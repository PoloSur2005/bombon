import 'package:flutter/material.dart';

class DescriptiveTextField extends StatelessWidget {
  final int maxCaracteres;
  final String hintText;
  final double horizontalPadding;

  const DescriptiveTextField(
      {super.key,
      required this.maxCaracteres,
      required this.hintText,
      this.horizontalPadding = 60});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: TextField(
        minLines: 5,
        maxLines: 5,
        maxLength: maxCaracteres,
        buildCounter: (BuildContext context,
            {required int currentLength,
            required bool isFocused,
            int? maxLength}) {
          return Text('$currentLength/${maxLength ?? ''} caracteres');
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
