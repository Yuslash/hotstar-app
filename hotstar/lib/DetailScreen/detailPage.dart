import 'package:flutter/material.dart';
import 'package:hotstar/DetailScreen/aboutDescription.dart';
import 'package:hotstar/DetailScreen/morelike.dart';
import 'package:hotstar/DetailScreen/options.dart';
import 'package:hotstar/DetailScreen/overview.dart';
import 'package:hotstar/DetailScreen/poster.dart';
import 'package:hotstar/DetailScreen/sectionGenre.dart';
import 'package:hotstar/DetailScreen/titleTran.dart';
import 'package:hotstar/DetailScreen/watchNowButton.dart';
import 'package:hotstar/NaviBarPage/downloadPage.dart';
import 'package:hotstar/NaviBarPage/newsPage.dart';
import 'package:hotstar/NaviBarPage/profilePage.dart';
import 'package:hotstar/NaviBarPage/searchPage.dart';
import 'package:hotstar/homePage.dart';
import 'package:hotstar/main.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.year,
    required this.duration,
    required this.lenlang,
    required this.genre,
    required this.description
    });

    final String image;
    final String title;
    final String year;
    final String duration;
    final int lenlang;
    final List<String> genre;
    final String description;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  int currentIndex = 0;

  final List<Widget> _pages = [
    
    HomePage(),
    SearchBarPage(),
    NewsPage(),
    DownloadPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xFF0F1014),

      body: SizedBox.expand(
        child: Padding(padding: EdgeInsets.only(top: 35, left: 10, right: 10,),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                children: [
                Poster(image: widget.image),
                TitleTran(title: widget.title),
                Overview(year: widget.year, duration: widget.duration, lenlang: widget.lenlang.toString(),),
                SizedBox(height: 10),
                WatchNowButton(),
                SectionGenre(genre: widget.genre),
                AboutDescription(description: widget.description,),
                Options(),
                Morelike(),
                SizedBox(height: 20),
              ],
                ),
              ]
            ),
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) => Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color(0xff98999B), width: 0.2))),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              unselectedItemColor: Color(0xFF878B93),
              selectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w800, height: 2.3),
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });

                if (index == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                }
                  else if(index == 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBarPage()));
                } else if(index == 2) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage()));
                } else if(index == 3) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DownloadPage()));
                } else if(index == 4) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                }

              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'images/home.png',
                      fit: BoxFit.cover,
                      width: 22,
                      height: 22,
                    ),
                    label: "Home"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.screen_search_desktop_rounded),
                    label: "Search"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.flash_on_rounded), label: "News & Hot"),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.downloading_sharp), label: "Download"),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'images/mic.png',
                      fit: BoxFit.cover,
                      width: 22,
                      height: 22,
                    ),
                    label: "My Space"),
              ],
            ),
          ),
        ),
      ),
    );



  }
}