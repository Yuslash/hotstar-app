import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HorrorSection extends StatefulWidget {
  const HorrorSection({
    super.key,
    required this.ipno,
    required this.endpoint,
    });

    final String ipno;
    final String endpoint;

  @override
  _HorrorSectionState createState() => _HorrorSectionState();
}

class _HorrorSectionState extends State<HorrorSection> {

  List<dynamic> items = [];

  Future<void> fetchData() async {

    final response = await http.get(Uri.parse('http://192.168.${widget.ipno}:3000/${widget.endpoint}'));

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
          mainAxisSize: MainAxisSize.min,
          children: items.map((item) {
            return Padding(padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 120,
                height: 178,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: item['imageurl'][0] != null ? Image.network(item['imageurl'][0], fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey,),) : Icon(Icons.broken_image, color: Colors.grey,),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}