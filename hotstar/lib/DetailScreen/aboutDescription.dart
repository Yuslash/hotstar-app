import 'package:flutter/material.dart';

class AboutDescription extends StatefulWidget {
  const AboutDescription({
    super.key,
    required this.description,
    });

    final String description;

  @override
  _AboutDescription createState() => _AboutDescription();
}

class _AboutDescription extends State<AboutDescription> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Text(widget.description, style: TextStyle(color: Color(0xff7D7E82), fontFamily: 'inter', fontWeight: FontWeight.w600, fontSize: 11.5, height: 1.4),),
    );
  }
}