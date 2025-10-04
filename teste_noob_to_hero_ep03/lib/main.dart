import 'package:flutter/material.dart';
import 'package:teste_noob_to_hero_ep03/pages/product_grid_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductGridPage(),
    );
  }
}
