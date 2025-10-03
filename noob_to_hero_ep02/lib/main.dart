import 'package:flutter/material.dart';
import 'package:noob_to_hero_ep02/pages/product_card_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Aplica tema e define tela inicial
      debugShowCheckedModeBanner: false,
      title: 'Card do Produto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            Colors.grey[100], //definir plano de fundo do app
      ),
      home: const ProductCardPage(), //tela principal
    );
  }
}
