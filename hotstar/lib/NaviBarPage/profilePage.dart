import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Text(
          "Hello Profile Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}