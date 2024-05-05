import 'package:flutter/material.dart';

import '../widgets/title.dart';

class PersonalizarPedidos extends StatefulWidget {
  const PersonalizarPedidos({super.key});

  @override
  State<PersonalizarPedidos> createState() => _PersonalizarPedidosState();
}

class _PersonalizarPedidosState extends State<PersonalizarPedidos> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 600, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitlePage(
            text: 'Registrar Pedido personalizado',
          ),
          Text('Imagenes de ejemplo'),
          Text('DescriptiveTextfield: figura'),
          Text('DescriptiveTextfield: metodo de entrega')
        ],
      ),
    );
  }
}
