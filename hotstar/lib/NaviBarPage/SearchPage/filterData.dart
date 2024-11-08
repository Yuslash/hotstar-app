import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FilterData extends StatefulWidget {
  const FilterData({
    super.key,
    // required this.data,
    });

    // final List<dynamic> data;

  @override
  _FilterDataState createState() => _FilterDataState();
}

class _FilterDataState extends State<FilterData> {

  List<Map<String, dynamic>> items = [];
  bool isLoadin = true;

  Future<void> fetchData() async {

    final response = await http.get(Uri.parse("http://192.168.37.18:3000/test"));
    if (response.statusCode == 200) {
      setState(() {
        items = List<Map<String, dynamic>>.from(jsonDecode(response.body));
        isLoadin = false;
      });
    }
  }

  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: isLoadin ? Center(
        child: CircularProgressIndicator(),
      ) : Wrap(
        children: items.asMap().entries.map((list) {

            int index = list.key;
            Map<String, dynamic> value = list.value;

          return Padding(padding: EdgeInsets.only(right: 4, bottom: 4),
            child: Container(
              width: ((index - 6) % 8 == 0 && index >= 6) ? 244 : 120,
              height: 178,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: Colors.red),
            ),
          );

        }).toList()
      ),
    );
  }
}