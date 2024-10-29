import 'package:flutter/material.dart';

class ContinuePanel extends StatefulWidget {
  const ContinuePanel({super.key});

  @override
  _ContinuePanelState createState() => _ContinuePanelState();

}

class _ContinuePanelState extends State<ContinuePanel> {

  final List<Map<String, String>> items = [
    {
      "title": "Avengers Endgame",
      "image": "images/endgame.png",
    },
    {
      "title": "Avengers Inifinty",
      "image": "images/inifinty.png",
    },
    {
      "title" : "Movie Hero",
      "image" : "images/hary.jpeg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: items.map((item) {
            return Padding(padding: const EdgeInsets.only(left: 5),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 182,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5),),
                        child: Image.asset(item['image']!, fit: BoxFit.cover,),
                      ),
                    ),
                    Container(
                      width: 182,
                      height: 44,
                      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Text(item['title']!, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),)
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