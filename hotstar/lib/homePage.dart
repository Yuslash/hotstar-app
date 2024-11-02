import 'package:flutter/material.dart';
import 'package:hotstar/AdvertPanel/AdvertPanel.dart';
import 'package:hotstar/SectorColumn/SecondSectorColumn.dart';
import 'package:hotstar/SectorColumn/thirdSectorColumn.dart';
import 'package:hotstar/listPanels.dart';
import 'package:hotstar/slideNav.dart';
import 'package:hotstar/watchbutton.dart';

const Color _background = Color(0xFF0F1014);

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    // required this.image,
  });

  // final String image;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SlideNav(),
            WatchButton(),
            ListPanels(),
            AdvertPanel(title: "Disney+ Hotstar", subTitle: "Diwali BlockBusterMovies!", image: "images/banner.jpeg",),
            SecondSectorColumn(),
            AdvertPanel(title: "Hotstar+ Specials", subTitle: "Welcome to HotstarSpecials", image: "images/banner.jpeg"),
            ThirdSectorColumn(),
            AdvertPanel(title: "Animation DenMark", subTitle: "Let the crack begin!", image: "images/banner.jpeg")
          ],
        ),
      ),

    );
  }
}
