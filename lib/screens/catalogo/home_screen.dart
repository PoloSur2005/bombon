import 'package:bombon_crochet/widgets/outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(249, 249, 255, 1),
          title: Text('Bombon Crochet',
              style: GoogleFonts.rowdies(
                  fontWeight: FontWeight.w200,
                  fontSize: 50,
                  color: const Color.fromARGB(255, 63, 95, 144))),
          actions: const [
            GenericOutlinedButton(
              text: 'Luis Fernado',
              icon: Icons.account_circle_outlined,
              width: 200,
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              childAspectRatio: 19 / 20,
              mainAxisSpacing: 20),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const ProductCard();
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber,
      ),
      child: const Text('Hola'),
    );
  }
}
