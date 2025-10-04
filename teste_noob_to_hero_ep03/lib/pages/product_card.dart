import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(2, 2)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              'https://cdn.pixabay.com/photo/2016/02/23/17/57/headphones-1218012_1280.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Produto #',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'R\$ ${(index + 1) * 50},00',
            style: const TextStyle(color: Colors.green),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
