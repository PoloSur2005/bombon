import 'package:bombon_crochet/widgets/generic_button.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 500, vertical: 30),
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
                onPressed: () {})
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
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: const Center(
        child: Text(
          'Método de Pago',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
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
          ...List.generate(5, (index) {
            return ListTile(
              leading: const FlutterLogo(size: 72.0),
              title: Text(products[index].title),
              subtitle: Text(products[index].description),
              trailing: const Icon(Icons.edit_outlined),
            );
          }),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Teléfono'),
          ),
        ],
      ),
    );
  }
}
