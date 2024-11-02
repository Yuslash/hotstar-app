import 'package:flutter/material.dart';
import 'package:hotstar/IndusSelection/studioPanel.dart';

class StudioSelect extends StatefulWidget {
  const StudioSelect({super.key});

  @override
  _StudioSelectState createState() => _StudioSelectState();
}

class _StudioSelectState extends State<StudioSelect> {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StudioPanel(image: 'images/disne.png', crosSize: 70, heightSize: 30),
          SizedBox(width: 4),
          StudioPanel(image: 'images/pixarwhite.png', crosSize: 92, heightSize: 52),
          SizedBox(width: 4),
          StudioPanel(image: 'images/marvel.png', crosSize: 70, heightSize: 70,)
        ],
      ),
    );
  }
}