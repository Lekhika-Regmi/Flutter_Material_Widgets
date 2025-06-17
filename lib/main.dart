import 'package:flutter/material.dart';
import 'package:widget_practice/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Catalog',
      theme: ThemeData(
        //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
