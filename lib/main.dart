import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Code en Dart y Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clean Code'),
        ),
        body: const Center(
          child: Text('Orden del Fénix'),
        ),
      ),
    );
  }
}
