import 'package:flutter/material.dart';
import 'package:hotstar/NaviBarPage/SearchPage/filterData.dart';
import 'package:hotstar/NaviBarPage/SearchPage/searchInput.dart';
import 'package:hotstar/NaviBarPage/SearchPage/trendingButton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Experience extends StatefulWidget {
  const Experience({ Key? key }) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {

  List<dynamic> itemss = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("http://192.162.37.18:3000/test"));
    setState(() {
      itemss = jsonDecode(response.body);
    }); 
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }


  @override
  Widget build(BuildContext context) {

    final genres = itemss.isNotEmpty && itemss[0].containsKey('genres')
        ? itemss[0]['genres']
        : null;

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
           if(genres != null) TrendingButton(items: genres,),
           if(genres != null) FilterData(data: genres)
          ],)
          ),
      ),
    );
  }
}