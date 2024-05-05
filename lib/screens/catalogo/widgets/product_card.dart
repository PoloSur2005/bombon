import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    title,
                    style: GoogleFonts.rowdies(
                        fontSize: 30, fontWeight: FontWeight.w200),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('\$$price - $days días',
                      style: GoogleFonts.merriweatherSans(fontSize: 18)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(description,
                  style: GoogleFonts.merriweatherSans(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
      ),
    );
  }
}
