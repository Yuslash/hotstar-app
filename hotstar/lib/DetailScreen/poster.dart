import 'package:flutter/material.dart';

class Poster extends StatefulWidget {
  const Poster({super.key});

  _PosterState createState() => _PosterState();

}

class _PosterState extends State<Poster> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: ClipRRect(
        child: Image.asset("images/bramposte.jpg", fit: BoxFit.cover,),
      ),
      );
  }
}