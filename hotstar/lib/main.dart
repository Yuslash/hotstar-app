import 'package:flutter/material.dart';
import 'package:hotstar/homePage.dart';

const Color _background = Color(0xFF0F1014);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _background,
        body: HomePage(),
        
      ),
    );
  }
}