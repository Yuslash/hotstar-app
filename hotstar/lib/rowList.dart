import 'package:flutter/material.dart';

class RowList extends StatelessWidget {
  const RowList({
    super.key,
    required this.title,
    required this.marspace,
    });

    final String title;
    final int marspace;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marspace.toDouble()),
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 0), 
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(title, style: const TextStyle(
                  color: Color(0xFFCACED7),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  )),
          IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right), iconSize: 24, color: Colors.white,)
        ],
      ),
      ),
    );
  }
}