import 'package:flutter/material.dart';

class LatestRelease extends StatefulWidget {
  const LatestRelease({super.key});

  @override
  _LatestReleaseState createState() => _LatestReleaseState();
}

class _LatestReleaseState extends State<LatestRelease> {

  final List<String> listImage = [
    'images/wed.jpg',
    'images/star.jpg',
    'images/ince.jpg',
    'images/dark.jpeg',
  ];

  @override
  Widget build(BuildContext context){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: listImage.map((img) {
            return Padding(padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 120,
                height: 178,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.asset(img, fit: BoxFit.cover,),
                ),
              ),
            );
          }).toList()
        ),
      ),
    );
  }

}
