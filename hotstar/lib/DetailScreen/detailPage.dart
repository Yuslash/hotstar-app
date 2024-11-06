import 'package:flutter/material.dart';
import 'package:hotstar/DetailScreen/aboutDescription.dart';
import 'package:hotstar/DetailScreen/morelike.dart';
import 'package:hotstar/DetailScreen/options.dart';
import 'package:hotstar/DetailScreen/overview.dart';
import 'package:hotstar/DetailScreen/poster.dart';
import 'package:hotstar/DetailScreen/sectionGenre.dart';
import 'package:hotstar/DetailScreen/titleTran.dart';
import 'package:hotstar/DetailScreen/watchNowButton.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: Padding(padding: EdgeInsets.only(top: 35, left: 10, right: 10,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Poster(),
              TitleTran(),
              Overview(),
              SizedBox(height: 10),
              WatchNowButton(),
              SectionGenre(),
              AboutDescription(),
              Options(),
              Morelike(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}