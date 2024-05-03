import 'package:flutter/material.dart';

class HalfClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 0) // Comienza en la esquina superior izquierda
      ..lineTo(
          0,
          size.height *
              0.4) // Dibuja una línea hasta la esquina inferior izquierda
      ..lineTo(
          size.width,
          size.height *
              0.4) // Dibuja una línea hasta la esquina inferior derecha
      ..lineTo(
          size.width, 0) // Dibuja una línea hasta la esquina superior derecha
      ..close(); //

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
