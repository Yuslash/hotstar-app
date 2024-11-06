import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Text(
        "Hello News Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}