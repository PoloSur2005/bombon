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
    //TODO: implementar junto con navbar, pero sin ser una ruta
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 600, vertical: 40),
      child: Column(
        children: [
          const TitlePage(
            text: 'Pedidos Pendientes',
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            child: Container(
              color: const Color.fromRGBO(249, 249, 255, 1),
              height: size.height * 0.5,
              child: ListView.separated(
                itemCount: 20,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.shopping_cart_outlined),
                    title: const Text('Pedido realizado el 4 de mayo'),
                    subtitle: const Text('2140.00 - 19 días - En proceso'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message_outlined),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
