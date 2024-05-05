import 'package:flutter/material.dart';

import '../product_data.dart';
import '../widgets/product_card.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductData().products;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(150, 40, 150, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 60,
              childAspectRatio: 24 / 30,
              mainAxisSpacing: 20),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
              title: products[index].title,
              image: products[index].imageCutted,
              price: products[index].price,
              days: products[index].days,
              description: products[index].description,
            );
          },
        ),
      ),
    );
  }
}
