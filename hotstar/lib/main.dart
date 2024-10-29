import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  List<dynamic> _responseData = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.210.18:3000/data'));
    setState(() {
    _responseData = jsonDecode(response.body);
    });

  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // void fetchingButton() {
  //   fetchData();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data from MongoDB"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_responseData.isNotEmpty ? _responseData[1]['title'] ?? 'Not Title Avaiable' : 'Loading...'),
              ElevatedButton(onPressed: (){
                fetchData();
              }, child: const Text('Fetch Data')),
              SizedBox(height: 10),
              Image.network(_responseData.isNotEmpty ? _responseData[5]['poster'] ?? 'No Image Found': 'Loading Image...')
            ],
          ),
        ),
      ),
    );
  }

}