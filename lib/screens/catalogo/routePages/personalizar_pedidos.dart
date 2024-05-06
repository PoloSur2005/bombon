import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_textfield.dart';
import 'package:flutter/material.dart';

import '../product_data.dart';
import '../widgets/descriptive_textfield.dart';
import '../widgets/title.dart';

class PersonalizarPedidos extends StatefulWidget {
  const PersonalizarPedidos({Key? key});

  @override
  State<PersonalizarPedidos> createState() => _PersonalizarPedidosState();
}

class _PersonalizarPedidosState extends State<PersonalizarPedidos> {
  @override
  Widget build(BuildContext context) {
    List<Product> products = ProductData().products;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitlePage(
            text: 'Registrar Pedido personalizado',
          ),
          ListaPedidos(products: products),
          const DescriptiveTextField(
            hintText: 'Describe la figura que deseas solicitar',
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
      ),
    );
  }
}

class MetodoPago extends StatelessWidget {
  const MetodoPago({Key? key});

  @override
  Widget build(BuildContext context) {
    return const GenericTextField(
      icon: Icons.credit_card,
      labelText: 'Método de pago',
    );
  }
}

class ListaPedidos extends StatelessWidget {
  final List<Product> products;

  const ListaPedidos({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(249, 249, 255, 1),
      height: 200,
      child: ListView(
        children: [
          ...List.generate(products.length, (index) {
            return Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    products[index].image,
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
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
