import 'package:flutter/material.dart';
import 'package:teste_noob_to_hero_ep03/pages/product_card.dart';

class ProductGridPage extends StatelessWidget {
  const ProductGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid Responsivo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = 2;
          if (constraints.maxWidth > 900)
            crossAxisCount = 4;
          else if (constraints.maxWidth > 600)
            crossAxisCount = 3;

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(), // 🔥 ativa scroll suave
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 3 / 4,
            ),
            itemCount: 6,
            itemBuilder: (_, i) => ProductCard(index: i),
          );
        },
      ),
    );
  }
}
