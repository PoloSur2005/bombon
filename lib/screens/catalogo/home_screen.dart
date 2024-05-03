import 'package:bombon_crochet/screens/catalogo/widgets/product_card.dart';
import 'package:bombon_crochet/widgets/outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'product_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(249, 249, 255, 1),
          title: Text('Bombon Crochet',
              style: GoogleFonts.rowdies(
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                  color: const Color.fromARGB(255, 63, 95, 144))),
          actions: [
            GenericOutlinedButton(
              text: 'Luis Fernado',
              icon: Icons.account_circle_outlined,
              width: 190,
              height: 50,
              onPressed: () {},
            ),
          ]),
      body: const Row(
        children: [VerticalNavBar(), ProductGrid()],
      ),
    );
  }
}

class VerticalNavBar extends StatelessWidget {
  const VerticalNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      onDestinationSelected: (int index) {},
      labelType: NavigationRailLabelType.all,
      leading: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: const Icon(Icons.shopping_cart_outlined),
      ),
      destinations: const [
        NavigationRailDestination(
          label: Text('Catálogo'),
          icon: Icon(Icons.category),
        ),
        NavigationRailDestination(
          label: Text('Perzonaliz.'),
          icon: Icon(Icons.palette),
        ),
        NavigationRailDestination(
          label: Text('Pago'),
          icon: Icon(Icons.credit_card),
        ),
      ],
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductData().products;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 40, 100, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 60,
              childAspectRatio: 29 / 30,
              mainAxisSpacing: 20),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
              title: products[index].title,
              image: products[index].image,
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
