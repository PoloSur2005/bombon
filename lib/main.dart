import 'package:bombon_crochet/provider.dart';
import 'package:bombon_crochet/screens/catalogo/home_screen.dart';
import 'package:bombon_crochet/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerxd(),
      child: MaterialApp(
        title: 'Bombon Crochet',
        theme: defaultTheme(),
        home: const Material(child: HomeScree()),
      ),
    );
  }
}
