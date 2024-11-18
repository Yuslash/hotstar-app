import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {

  final TextEditingController _searchController = TextEditingController();

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
              Icon(Icons.search),
              SizedBox(width: 12),
              Expanded(child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Movies, Shows and more",
                  hintStyle: TextStyle(
                  color: Color(0xFF070D14),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'inter',
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 0)
                ),
              )),
            IconButton(
              icon: Icon(Icons.mic_none),
              onPressed: () {
                // Implement your microphone functionality here
              },
            ),
            ],
        ),
      ),
    );
  }
}