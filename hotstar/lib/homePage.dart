import 'package:flutter/material.dart';

const Color _background = Color(0xFF0F1014);

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    // required this.image,
  });

  // final String image;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(decoration: 
      const BoxDecoration(color: _background)),
    );
  }
}
