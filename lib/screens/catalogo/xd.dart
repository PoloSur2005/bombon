import 'package:flutter/material.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: 10,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: Text("name"),
          );
        });
  }
}
