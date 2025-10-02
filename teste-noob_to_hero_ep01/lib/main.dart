import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text(
            'Noob to hero ep 01',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: const Center(
          child: Text(
            "Primeiro Hello World do Noob to Hero 💣",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
