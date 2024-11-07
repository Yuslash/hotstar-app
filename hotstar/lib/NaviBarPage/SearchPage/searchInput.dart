import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xFFE1E6F0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.search),
                  SizedBox(width: 12),
                  Text(
                    "Movies, Shows and more",
                    style: TextStyle(
                        color: Color(0xFF00020C),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'inter'),
                  ),
                  ],
                ),
              ),
              Icon(Icons.mic_none)
            ],
        ),
      ),
    );
  }
}