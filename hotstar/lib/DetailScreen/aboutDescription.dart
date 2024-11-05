import 'package:flutter/material.dart';

class AboutDescription extends StatefulWidget {
  const AboutDescription({super.key});

  @override
  _AboutDescription createState() => _AboutDescription();
}

class _AboutDescription extends State<AboutDescription> {

  final Map<String, dynamic> item = {
    "about": "A covert investigation changes its course when special officer Amar encounters an unrelenting Vikram and his pursuit to take down a notorious drug cartel"
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Text(item['about'], style: TextStyle(color: Color(0xff7D7E82), fontFamily: 'inter', fontWeight: FontWeight.w600, fontSize: 11.5, height: 1.4),),
    );
  }
}