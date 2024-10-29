import 'package:flutter/material.dart';
import 'package:hotstar/InnerPanels/continuePanel.dart';
import 'package:hotstar/InnerPanels/dbPanel.dart';
import 'package:hotstar/InnerPanels/fantasyPanel.dart';
import 'package:hotstar/InnerPanels/fantasySeries.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/InnerPanels/shortSeriesPane.dart';
import 'package:hotstar/rowList.dart';

class ListPanels extends StatefulWidget {
  const ListPanels({super.key});

  @override
  _ListPanelsState createState() => _ListPanelsState();
}

class _ListPanelsState extends State<ListPanels> {

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
            RowList(title: "Netflix Movies", marspace: 5),
            DbPanel(),
            RowList(title: "Short Series", marspace: 5),
            ShortSeriesPanel(),
            RowList(title: "Fantasy Movies", marspace: 5),
            FantasySeries(),
          ],
        ),
      ),
    );
  }
}