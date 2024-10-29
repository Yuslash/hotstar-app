import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ShortSeriesPanel extends StatefulWidget {
  const ShortSeriesPanel({super.key});

  @override
  _ShortSeriesPanelState createState() => _ShortSeriesPanelState();
}

class _ShortSeriesPanelState extends State<ShortSeriesPanel> {
  
  List<dynamic> items = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.210.18:3000/short'));
    setState(() {
      items = jsonDecode(response.body);
    });
  }

  @override
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
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: item['poster'] != null ? Image.network(item['poster'], fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey,)) : Icon(Icons.broken_image, color: Colors.grey,), 
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}