import 'package:flutter/material.dart';

class SectionGenre extends StatefulWidget {
  const SectionGenre({super.key});

  @override
  _SectionGenreState createState() => _SectionGenreState();
}

class _SectionGenreState extends State<SectionGenre> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35),
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff929397), width: 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.2, vertical: 1),
              child: Text("Action", style: TextStyle(fontSize: 10, fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white),),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff929397), width: 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.2, vertical: 1),
              child: Text("Action", style: TextStyle(fontSize: 10, fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white),),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff929397), width: 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.2, vertical: 1),
              child: Text("Action", style: TextStyle(fontSize: 10, fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white),),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff929397), width: 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.2, vertical: 1),
              child: Text("Action", style: TextStyle(fontSize: 10, fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white),),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xff929397), width: 1),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.2, vertical: 1),
              child: Text("Action", style: TextStyle(fontSize: 10, fontFamily: 'inter', fontWeight: FontWeight.w600, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}