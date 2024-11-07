import 'package:flutter/material.dart';
import 'package:hotstar/NaviBarPage/SearchPage/searchInput.dart';
import 'package:hotstar/NaviBarPage/SearchPage/trendingButton.dart';

class Experience extends StatefulWidget {
  const Experience({ Key? key }) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
            SearchInput(),
            TrendingButton(),
          ],)
          ),
      ),
    );
  }
}