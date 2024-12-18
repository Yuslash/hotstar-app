import 'package:flutter/material.dart';

class Poster extends StatefulWidget {
  const Poster({
    super.key,
    required this.image,
    });

    final String image;

  _PosterState createState() => _PosterState();

}

class _PosterState extends State<Poster> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: ClipRRect(
        child: Image.network(widget.image, fit: BoxFit.cover,),
      ),
      );
  }
}