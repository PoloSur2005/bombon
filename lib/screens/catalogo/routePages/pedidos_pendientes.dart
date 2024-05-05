import 'package:flutter/material.dart';

import '../widgets/title.dart';

class PedidosPendientes extends StatefulWidget {
  const PedidosPendientes({super.key});

  @override
  State<PedidosPendientes> createState() => _PedidosPendientesState();
}

class _PedidosPendientesState extends State<PedidosPendientes> {
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
          Text('Lista de desplegables'),
        ],
      ),
    );
  }
}
