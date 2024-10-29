import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DbPanel extends StatefulWidget {
  const DbPanel({super.key});

  @override
  _DbPanelState createState() => _DbPanelState();

}

class _DbPanelState extends State<DbPanel> {

  List<dynamic> items = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.210.18:3000/data'));
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
                height: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  child: item['poster'] != null ? Image.network(item['poster'], fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, color: Colors.grey,),) : Icon(Icons.broken_image, color: Colors.grey,),
                ),
              ),
            );

          }).toList(),
        ),
      ),
    );
  }
}
