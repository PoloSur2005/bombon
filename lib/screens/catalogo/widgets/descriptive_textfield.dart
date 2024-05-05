import 'package:flutter/material.dart';

class DescriptiveTextField extends StatelessWidget {
  final int maxCaracteres;
  final String hintText;

  const DescriptiveTextField(
      {super.key, required this.maxCaracteres, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 5,
      maxLines: 5,
      maxLength: maxCaracteres,
      buildCounter: (BuildContext context,
          {required int currentLength,
          required bool isFocused,
          int? maxLength}) {
        return Text('$currentLength de ${maxLength ?? ''}');
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
