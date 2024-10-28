import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  Map<String, dynamic> _responseData = {};

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.210.18:3000/api'));
    _responseData = jsonDecode(response.body);
    setState(() {});

  }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  void fetchingButton() {
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_responseData['message'] ?? 'Loading..'),
              ElevatedButton(onPressed: (){
                fetchData();
              }, child: Text('Fetch Data'))
            ],
          ),
        ),
      ),
    );
  }

}