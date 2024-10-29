import 'package:flutter/material.dart';

class FantasyPanel extends StatefulWidget {
  const FantasyPanel({super.key});

  @override
  _FantasyPanelState createState() => _FantasyPanelState();
}

class _FantasyPanelState extends State<FantasyPanel> {
  final List<String> listImage = [
    'images/dark.jpeg',
    'images/ince.jpg',
    'images/wed.jpg',
    'images/star.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: listImage.map((img) {
              return Padding(
                padding: EdgeInsets.only(right: 5),
                child: Container(
                  width: 130,
                  height: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}
