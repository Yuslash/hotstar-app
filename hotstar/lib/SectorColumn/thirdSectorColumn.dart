import 'package:flutter/material.dart';
import 'package:hotstar/AlterApi/animationList.dart';
import 'package:hotstar/InnerPanels/fantasyPanel.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/rowList.dart';

class ThirdSectorColumn extends StatefulWidget {
  const ThirdSectorColumn({
    super.key,
    required this.ipno
    });

    final String ipno;

  @override
  _ThirdSectorColumnState createState() => _ThirdSectorColumnState();
}

class _ThirdSectorColumnState extends State<ThirdSectorColumn> {


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              RowList(title: "Animations Movies", marspace: 5),
              AnimationList(port: widget.ipno),
              RowList(title: "Latest Release", marspace: 5),
              LatestRelease(),
              RowList(title: "Fantasy Movies", marspace: 5),
              FantasyPanel()
            ],
          ),
        ),
    );
  }
}