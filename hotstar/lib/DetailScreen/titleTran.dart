import 'package:flutter/material.dart';

class TitleTran extends StatefulWidget {
  const TitleTran({
    super.key,
    required this.title,
    });

    final String title;

  @override
  _TitleTranState createState() => _TitleTranState(); 
}

class _TitleTranState extends State<TitleTran> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 80,
      child: Padding(padding: EdgeInsets.only(right: 25, left: 25, top: 5 ),
        child: Column(
          children: [
            Image.asset(widget.title, fit: BoxFit.cover,)
          ],
        ),
      )
    );  
  }
}