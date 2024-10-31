import 'package:flutter/material.dart';
import 'package:hotstar/Popular%20Langauages/popularLanguage.dart';

class LanguagePanel extends StatefulWidget {
  const LanguagePanel({
    super.key
    });

    _LanguagePanelState createState() => _LanguagePanelState();
}

class _LanguagePanelState extends State<LanguagePanel> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PopularLanguage(
                language: 'English',
                image: 'images/clian.jpg',
                color1: Color(0xFFA3E3FF),
                color2: Color(0xFF021D47)
              ),
            PopularLanguage(
                language: 'Tamil',
                image: 'images/vijay.png',
                color1: Color(0xFFFCAB64),
                color2: Color(0xFFD16507)
              ),
            PopularLanguage(
                language: 'Hindi',
                image: 'images/sushant.jpeg',
                color1: Color(0xFFFF7BF2),
                color2: Color(0xFFB007D1)
              ),
          ],
        ),
      ),
    );
  }
}