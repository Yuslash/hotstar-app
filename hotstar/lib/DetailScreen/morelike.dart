import 'package:flutter/material.dart';
import 'package:hotstar/DetailScreen/options.dart';
import 'package:hotstar/InnerPanels/latestRelease.dart';
import 'package:hotstar/rowList.dart';

class Morelike extends StatefulWidget {
  const Morelike({super.key});

  @override
  _MorelikeState  createState() => _MorelikeState();
}

class _MorelikeState extends State<Morelike> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          RowList(title: "More Like This", marspace: 5),
          LatestRelease(),
        ],
      )
    );
  }
}
