import 'package:flutter/material.dart';

class ContinuePanel extends StatefulWidget {
  const ContinuePanel({super.key});

  @override
  _ContinuePanelState createState() => _ContinuePanelState();

}

class _ContinuePanelState extends State<ContinuePanel> {

  final List<String> imagePath = [
    'images/endgame.png',
    'images/inifinty.png',
    'images/heros.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: imagePath.map((img) {
            return Padding(padding: EdgeInsets.only(left: 5),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 182,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5),),
                        child: Image.asset(img, fit: BoxFit.cover,),
                      ),
                    ),
                    Container(
                      width: 182,
                      height: 44,
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Text("Avengers Endgame", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),)
                      ],),
                      )
                    ),
                  ],
                ),
              ),
            );
          }).toList()
      ),
      )
    );
  }
}