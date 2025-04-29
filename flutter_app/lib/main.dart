import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoProject',
      home: Scaffold(
        appBar: AppBar(title: const Text('CryptoProject')),
        body: const Center(child: Text('Welcome!')),
      ),
    );
  }
}
