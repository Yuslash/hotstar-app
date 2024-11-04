import 'package:flutter/material.dart';
import 'package:hotstar/AdvertPanel/AdvertPanel.dart';
import 'package:hotstar/AlterApi/ActionSection.dart';
import 'package:hotstar/AlterApi/dynamicSection.dart';
import 'package:hotstar/AlterApi/horrorSection.dart';
import 'package:hotstar/rowList.dart';

class SixthSectorColumn extends StatefulWidget {
  const SixthSectorColumn({
    super.key,
    required this.ipno
    });

    final String ipno;

  @override
  _SixthSectorColumnState createState() => _SixthSectorColumnState();
}

class _SixthSectorColumnState extends State<SixthSectorColumn> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            RowList(title: "Horror Section", marspace: 10),
            HorrorSection(ipno: widget.ipno, endpoint: "horror"),
            RowList(title: "Mystery Series", marspace: 5),
            DynamicSection(ipno: widget.ipno, endpoint: "mystery"),
            RowList(title: "Action Movies", marspace: 5),
            ActionSection(ipno: widget.ipno, endpoint: "action"),
            AdvertPanel(title: "Watch This Shit Opennheimer", subTitle: "An Christepher Gratest film", image: "images/openbanner.jpg")
            ],
        ),
      ),
    );
  }
}