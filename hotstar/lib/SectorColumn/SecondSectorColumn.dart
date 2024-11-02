import 'package:flutter/material.dart';
import 'package:hotstar/AlterApi/animationList.dart';
import 'package:hotstar/InnerPanels/fantasyPanel.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/rowList.dart';

class SecondSectorColumn extends StatefulWidget {
  const SecondSectorColumn({super.key});

  @override
  _SecondSectorColumnState createState() => _SecondSectorColumnState();
}

class _SecondSectorColumnState extends State<SecondSectorColumn> {

  String portno = "0.18";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            RowList(title: "Latest Realease", marspace: 5),
            LatestRelease(),
            RowList(title: "Fantasy Movies", marspace: 5),
            FantasyPanel(),
            RowList(title: "Animation Movies", marspace: 5),
            AnimationList(port: portno),
          ],
        ),
      ),
    );
  }
}