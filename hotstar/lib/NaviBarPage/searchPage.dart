import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({ super.key });

  @override 
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {

  @override
  @override
  Widget build(BuildContext context) {

    return SizedBox.expand(
        child: Center(
          child: Text("Search Page", style: TextStyle(color: Colors.white),),
        ),
      );
  }
}