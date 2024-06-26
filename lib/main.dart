import 'package:calculadora/calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    );
  }
}
