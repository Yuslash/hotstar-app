import 'package:flutter/material.dart';
import 'package:hotstar/DetailScreen/detailPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ActualList extends StatefulWidget {
  const ActualList({ Key? key }) : super(key: key);

  @override
  _ActualListState createState() => _ActualListState();
}

class _ActualListState extends State<ActualList> {

  List<dynamic> items = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("http://192.168.18.18:3000/actual"));

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
          children:  items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(
                    image: item['banner'], 
                    title: item['title'],
                    year: item['year'],
                    duration: item['duration'],
                    lenlang: item['language'].length,
                        ),
                      ),
                    );
                },

                child: Container(
                  width: 120,
                  height: 178,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(item['poster'], fit: BoxFit.cover),
                  ),
                ),
              ),
            );
          }).toList()
        ),
      ),
    );
  }
}