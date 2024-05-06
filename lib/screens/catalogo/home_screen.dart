import 'package:bombon_crochet/screens/catalogo/routePages/registrar_pedidos.dart';
import 'package:bombon_crochet/screens/catalogo/routePages/personalizar_pedidos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/outlined_button.dart';
import 'routePages/pago.dart';
import 'routePages/catalogo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: index,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                NavigationRailDestination(
                    icon: FloatingActionButton(
                      elevation: 0,
                      onPressed: () => setState(() => index = 0),
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                    label: const Text(''),
                    disabled: false,
                    indicatorColor: Colors.blue),
                const NavigationRailDestination(
                  label: Text('Catálogo'),
                  icon: Icon(Icons.category),
                ),
                const NavigationRailDestination(
                  label: Text('Perzonaliz.'),
                  icon: Icon(Icons.palette),
                ),
                const NavigationRailDestination(
                  label: Text('Pagos'),
                  icon: Icon(Icons.credit_card),
                ),
              ],
            ),
            Expanded(
              child: buildPages(index),
            )
          ],
        ));
  }

  Widget buildPages(int index) {
    switch (index) {
      case 0:
        return const RegistarPedidos();
      case 1:
        return const Catalogo();
      case 2:
        return const PersonalizarPedidos();
      case 3:
        return const Pago();
      default:
        return const Center(
          child: Text('Error'),
        );
    }
  }

  PreferredSizeWidget appBar = AppBar(
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
      ]);
}
