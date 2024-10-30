import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DramaShow extends StatefulWidget {
  const DramaShow({super.key});

  @override
  _DramaShowState createState() => _DramaShowState();
}

class _DramaShowState extends State<DramaShow> {

  List<dynamic> items = [];

  Future<void> fetchData() async {

    final response = await http.get(Uri.parse('http://192.168.210.18:3000/drama'));
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
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: items.map((item) {
            return Padding(padding: EdgeInsets.only(right: 5),
            child: Container(
              width: 120,
              height: 178,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: item['poster'] != null ? Image.network(item['poster'], fit: BoxFit.cover, errorBuilder: (context,  error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey,) ,) : Icon(Icons.broken_image, color: Colors.grey,),
              ),
            ),
          );
          }).toList(),
        ),
      ),
    );
  }
}