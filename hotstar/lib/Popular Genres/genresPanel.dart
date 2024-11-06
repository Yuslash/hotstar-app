import 'package:flutter/material.dart';
import 'package:hotstar/Popular%20Genres/popularGenres.dart';

class GenresPanel extends StatefulWidget {
  const GenresPanel({super.key});

  _GenresPanelState createState() => _GenresPanelState();
}

class _GenresPanelState extends State<GenresPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PopularGenres(
                Genres: 'Romance',
                image: 'images/romance.jpeg',
                color1: Color(0xFFFFA4D3),
                color2: Color(0xFF470226)),
            PopularGenres(
                Genres: 'Drama',
                image: 'images/drama.jpeg',
                color1: Color(0xFF82FC64),
                color2: Color(0xFF357002)),
            PopularGenres(
                Genres: 'Family',
                image: 'images/family.png',
                color1: Color(0xFFF0FF7B),
                color2: Color(0xFF545400)),
          ],
        ),
      ),
    );
  }
}
