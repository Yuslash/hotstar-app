import 'package:flutter/material.dart';

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
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
              )
            )
          ],
        ),
      ),
    );
  }
}