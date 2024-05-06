import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_textfield.dart';
import 'package:flutter/material.dart';

import '../product_data.dart';
import '../widgets/descriptive_textfield.dart';
import '../widgets/title.dart';

class RegistarPedidos extends StatefulWidget {
  const RegistarPedidos({super.key});

  @override
  State<RegistarPedidos> createState() => _RegistarPedidosState();
}

class _RegistarPedidosState extends State<RegistarPedidos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 600, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitlePage(
              text: 'Registrar Pedido',
            ),
            const ListaPedidos(),
            const DescriptiveTextField(
              hintText: 'Describe el método de entrega',
              maxCaracteres: 200,
            ),
            const MetodoPago(),
            GenericButton(
              icon: Icons.shopping_cart_checkout_outlined,
              text: 'Pedir',
              onPressed: () {},
              width: 120,
            )
          ],
        ));
  }
}

class MetodoPago extends StatelessWidget {
  const MetodoPago({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GenericTextField(
      icon: Icons.credit_card,
      labelText: 'Método de pago',
    );
  }
}

class ListaPedidos extends StatelessWidget {
  const ListaPedidos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductData().products;
    return Container(
      color: const Color.fromRGBO(249, 249, 255, 1),
      height: 200,
      child: ListView(
        children: [
          ...List.generate(6, (index) {
            return Column(
              children: [
                ListTile(
                  leading: const FlutterLogo(size: 72.0),
                  title: Text(products[index].title),
                  subtitle: Text(products[index].description),
                  //TODO: implementar textfield para editar cantidad de producto
                  trailing: const Icon(Icons.edit_outlined),
                ),
                const Divider(
                  height: 0,
                )
              ],
            );
          }),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart_outlined),
            title: const Text('Añadir producto'),
            //TODO: implmentar index de navbar en provider
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
