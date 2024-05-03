import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/outlined_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_clip.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String days;
  final String description;
  final String image;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.days,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: const Color.fromRGBO(249, 249, 255, 1),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(203, 205, 213, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            ClipPath(
              clipper: HalfClipper(),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.rowdies(
                        fontSize: 30, fontWeight: FontWeight.w200),
                  ),
                  Text('\$$price - $days días',
                      style: GoogleFonts.merriweatherSans(fontSize: 18)),
                  Text(description,
                      style: GoogleFonts.merriweatherSans(fontSize: 15)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GenericOutlinedButton(
                          text: 'Mas info',
                          icon: Icons.info_outline,
                          width: 150,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 10),
                        GenericButton(
                            text: 'Comprar',
                            icon: Icons.shopping_cart_checkout_outlined,
                            width: 150,
                            onPressed: () {})
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
