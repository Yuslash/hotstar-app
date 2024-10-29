import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({ super.key });

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search page'),
      ),
      body: Center(
        child: Text("search Pages"),
      ),
    );
  }
}