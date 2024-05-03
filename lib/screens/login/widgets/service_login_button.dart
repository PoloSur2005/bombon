import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceLoginButton extends StatelessWidget {
  final String text;
  final String image;
  final double imageSize;
  const ServiceLoginButton({
    super.key,
    required this.text,
    required this.image,
    this.imageSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => () {},
      child: Container(
        width: 260,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30, child: Image(image: AssetImage(image))),
              Text(
                text,
                style: GoogleFonts.roboto(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
