import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SpecialMovies extends StatefulWidget {
  const SpecialMovies({
    super.key,
    required this.port,
    });

    final String port;

  @override
  _SpecialMoviesState createState() => _SpecialMoviesState();
}

class _SpecialMoviesState extends State<SpecialMovies> {

  List<dynamic> items = [];

  Future<void> fetchData() async {

    final response = await http.get(Uri.parse('http://192.168.${widget.port}:3000/spa'));

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
                  borderRadius: BorderRadius.circular(2),
                  child: item['poster'] != null ? Image.network(item['poster'], fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey),) : Icon(Icons.broken_image, color: Colors.grey),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}