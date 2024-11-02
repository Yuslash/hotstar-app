import 'package:flutter/material.dart';
import 'package:hotstar/AlterApi/ActionSection.dart';
import 'package:hotstar/AlterApi/animationList.dart';
import 'package:hotstar/AlterApi/dynamicSection.dart';
import 'package:hotstar/AlterApi/horrorSection.dart';
import 'package:hotstar/IndusSelection/studioSelect.dart';
import 'package:hotstar/IndusSelection/twoTowSelect.dart';
import 'package:hotstar/InnerPanels/continuePanel.dart';
import 'package:hotstar/InnerPanels/fantasyPanel.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/InnerPanels/specialMovies.dart';
import 'package:hotstar/Popular%20Genres/genresPanel.dart';
import 'package:hotstar/Popular%20Langauages/languagePanel.dart';
import 'package:hotstar/rowList.dart';

class ListPanels extends StatefulWidget {
  const ListPanels({super.key});

  @override
  _ListPanelsState createState() => _ListPanelsState();
}

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
            RowList(title: "Animations Movies", marspace: 5),
            AnimationList(port: portno,),
          ],
        ),
      ),
    );
  }
}