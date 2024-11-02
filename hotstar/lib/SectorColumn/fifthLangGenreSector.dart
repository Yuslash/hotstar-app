import 'package:flutter/material.dart';
import 'package:hotstar/Popular%20Genres/genresPanel.dart';
import 'package:hotstar/Popular%20Langauages/languagePanel.dart';
import 'package:hotstar/rowList.dart';

class FifthLangGenreSector extends StatefulWidget {
  const FifthLangGenreSector({super.key});

  @override
  _FifthLangGenreSectorState createState() => _FifthLangGenreSectorState();
}

class _FifthLangGenreSectorState extends State<FifthLangGenreSector> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            RowList(title: "Popular Languages", marspace: 5),
            LanguagePanel(),
            RowList(title: "Popular Genres", marspace: 10),
            GenresPanel(),
          ],
        ),
      ),
    );
  }
}