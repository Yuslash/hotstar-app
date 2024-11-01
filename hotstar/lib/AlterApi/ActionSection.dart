import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ActionSection extends StatefulWidget {
  const ActionSection({
    super.key,
    required this.ipno,
    required this.endpoint,
  });

  final String ipno;
  final String endpoint;

  @override
  _ActionSectionState createState() => _ActionSectionState();
}

class _ActionSectionState extends State<ActionSection> {
  List<dynamic> items = [];

  Future<void> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('http://192.168.${widget.ipno}:3000/${widget.endpoint}'),
      );
      if (response.statusCode == 200) {
        setState(() {
          items = jsonDecode(response.body);
        });
      } else {
        print("Failed to load data");
      }
    } catch (e) {
      print("Error fetching data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(
          child:
              CircularProgressIndicator()); // Show a loader while data is loading
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: items.map((item) {
          final imageUrl =
              item['imageurl'] != null && item['imageurl'].isNotEmpty
                  ? item['imageurl'][0]
                  : null;

          return Padding(
            padding: EdgeInsets.only(right: 5),
            child: Container(
              width: 120,
              height: 178,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: imageUrl != null
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Image.asset('images/basket.jpg')
                      )
                    : Icon(
                        Icons.broken_image,
                        color: Colors.grey,
                      ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
