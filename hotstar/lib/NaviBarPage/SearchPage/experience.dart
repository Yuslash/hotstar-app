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

  List<dynamic> items = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("http://192.162.18.18:3000/actual"));
    setState(() {
      items = jsonDecode(response.body);
    }); 
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  List<String> genres = [
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Family",
    "Fantasy",
    "History",
    "Horror",
    "Music",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Sports",
    "Superhero",
    "Thriller",
    "War",
    "Western",
    "Psychological",
    "Suspense",
    "Historical Fiction",
  ];
  
  List<String> doubleGenre = [
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Family",
    "Fantasy",
    "History",
    "Horror",
    "Music",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Sports",
    "Superhero",
    "Thriller",
    "War",
    "Western",
    "Psychological",
    "Suspense",
    "Historical Fiction",
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Family",
    "Fantasy",
    "History",
    "Horror",
    "Music",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Sports",
    "Superhero",
    "Thriller",
    "War",
    "Western",
    "Psychological",
    "Suspense",
    "Historical Fiction",
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Family",
    "Fantasy",
    "History",
    "Horror",
    "Music",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Sports",
    "Superhero",
    "Thriller",
    "War",
    "Western",
    "Psychological",
    "Suspense",
    "Historical Fiction",
  ];


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
            TrendingButton(items: genres,),
            FilterData(data: doubleGenre)
          ],)
          ),
      ),
    );
  }
}