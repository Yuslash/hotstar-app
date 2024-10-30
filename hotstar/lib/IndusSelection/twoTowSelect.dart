import 'package:flutter/material.dart';
import 'package:hotstar/IndusSelection/studioPanel.dart';

class TwoTowSelect extends StatefulWidget {
  const TwoTowSelect({super.key});

  @override
  _TwoTowSelectState createState() => _TwoTowSelectState();
}

class _TwoTowSelectState extends State<TwoTowSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          StudioPanel(image: 'images/starwars.png', crosSize: 70, heightSize: 70,),
          SizedBox(width: 4),
          StudioPanel(image: 'images/whitenation.png', crosSize: 73, heightSize: 21,),
          SizedBox(width: 4),
          StudioPanel(image: 'images/jio.png', crosSize: 98, heightSize: 55,),
          SizedBox(width: 4),

        ],
      ),
    );
  }
} 
