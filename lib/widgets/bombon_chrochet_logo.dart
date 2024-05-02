import 'package:flutter/material.dart';

class BombonChrochetLogo extends StatelessWidget {
  final double width;
  final double height;

  const BombonChrochetLogo({
    super.key,
    this.width = 400,
    this.height = 400,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Image.asset('images/Logo/Bombon_Crochet_Logo.png'),
    );
  }
}
