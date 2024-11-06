import 'package:flutter/material.dart';
import 'package:hotstar/DetailScreen/aboutDescription.dart';
import 'package:hotstar/DetailScreen/morelike.dart';
import 'package:hotstar/DetailScreen/options.dart';
import 'package:hotstar/DetailScreen/overview.dart';
import 'package:hotstar/DetailScreen/poster.dart';
import 'package:hotstar/DetailScreen/sectionGenre.dart';
import 'package:hotstar/DetailScreen/titleTran.dart';
import 'package:hotstar/DetailScreen/watchNowButton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    });


  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  List<dynamic> items = [];

  Future<void> fetchData() async  {
    final response = await http.get(Uri.parse("http://192.168.18.18:3000/actual"));

    setState(() {
      items = jsonDecode(response.body);
    });

  }

  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox.expand(
      child: Padding(padding: EdgeInsets.only(top: 35, left: 10, right: 10,),
        child: SingleChildScrollView(
          child: Column(
            children: items.map((item) {
              return Column(
              children: [
              Poster(image: item['poster']),
              TitleTran(title: item['title']),
              Overview(),
              SizedBox(height: 10),
              WatchNowButton(),
              SectionGenre(),
              AboutDescription(),
              Options(),
              Morelike(),
              SizedBox(height: 20),
            ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}