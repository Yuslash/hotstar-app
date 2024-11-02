import 'package:flutter/material.dart';
import 'package:hotstar/IndusSelection/studioSelect.dart';
import 'package:hotstar/IndusSelection/twoTowSelect.dart';

class FourthStudioSector extends StatefulWidget {
  const FourthStudioSector({super.key});

  @override
  _FourthStudioSectorState createState() => _FourthStudioSectorState();
}

class _FourthStudioSectorState extends State<FourthStudioSector> {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            SizedBox(height: 10),
            StudioSelect(),
            SizedBox(height: 5),
            TwoTowSelect(),
          ],
        ),
      ),
    );
  }
}