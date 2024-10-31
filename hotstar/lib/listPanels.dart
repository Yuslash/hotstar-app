import 'package:flutter/material.dart';
import 'package:hotstar/AlterApi/animationList.dart';
import 'package:hotstar/IndusSelection/studioSelect.dart';
import 'package:hotstar/IndusSelection/twoTowSelect.dart';
import 'package:hotstar/InnerPanels/continuePanel.dart';
import 'package:hotstar/InnerPanels/dbPanel.dart';
import 'package:hotstar/InnerPanels/dramaShow.dart';
import 'package:hotstar/InnerPanels/fantasyPanel.dart';
import 'package:hotstar/InnerPanels/fantasySeries.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/InnerPanels/shortSeriesPane.dart';
import 'package:hotstar/InnerPanels/specialMovies.dart';
import 'package:hotstar/Popular%20Genres/genresPanel.dart';
import 'package:hotstar/Popular%20Langauages/languagePanel.dart';
import 'package:hotstar/Popular%20Langauages/popularLanguage.dart';
import 'package:hotstar/rowList.dart';

class ListPanels extends StatefulWidget {
  const ListPanels({super.key});

  @override
  _ListPanelsState createState() => _ListPanelsState();
}

// 0xFFA3E3FF
// 0xFF021D47

class _ListPanelsState extends State<ListPanels> {

  String portno = "0.18";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10), 
        child: Column(
          children: [

            RowList(title: "Continue Watching", marspace: 10),
            ContinuePanel(),
            RowList(title: "Latest Release", marspace: 5),
            LatestRelease(),
            RowList(title: "Fantasy Movies", marspace: 5),
            FantasyPanel(),
            RowList(title: "Netflix Movies", marspace: 10),
            DbPanel(port: portno,),
            RowList(title: "Short Series", marspace: 5),
            ShortSeriesPanel(port: portno,),
            RowList(title: "Fantasy Movies", marspace: 5),
            FantasySeries(port: portno,),
            RowList(title: "Drama Movies", marspace: 10),
            DramaShow(port: portno,),
            RowList(title: "Special Movies", marspace: 5),
            SpecialMovies(port: portno,),
            RowList(title: "Animations Movies", marspace: 5),
            AnimationList(port: portno,),
            SizedBox(height: 20),
            StudioSelect(),
            SizedBox(height: 5),
            TwoTowSelect(),
            RowList(title: "Popular Languages", marspace: 5),
            LanguagePanel(),
            RowList(title: "Popular Genres", marspace: 10),
            GenresPanel(),
            SizedBox(height: 20)

          ],
        ),
      ),
    );
  }
}