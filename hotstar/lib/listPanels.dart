import 'package:flutter/material.dart';
import 'package:hotstar/InnerPanels/continuePanel.dart';

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
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Continue Watching", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right), color: Colors.white, iconSize: 24),
                ],
              ),
            ),
            ContinuePanel(),
          ],
        ),
      ),
    );
  }
}