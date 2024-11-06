import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Text(
          "Hello Download page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}