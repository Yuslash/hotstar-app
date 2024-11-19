import 'package:flutter/material.dart';
import 'package:hotstar/Popular%20Genres/genresPanel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsExperience extends StatefulWidget {
    const NewsExperience({
      super.key,
      // required this.banner,
      // required this.title,
      // required this.release,
      // required this.genre,
      // required this.description
      });

      // final String banner;
      // final String title;
      // final String release;
      // final String genre;
      // final String description;

  @override
  _NewsExperienceState createState() => _NewsExperienceState();
}

class _NewsExperienceState extends State<NewsExperience> {

  List<dynamic> itemss = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("http://192.168.90.18:3000/news"));

    setState((){
      itemss = jsonDecode(response.body);
    });
  }

  void initState() {
    super.initState();
    fetchData(); 
    }

  final List<String> items = [
   "English",
    "Drama",
    "Fantasy",
    "Crime",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              children: itemss.map((item){ 
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 225,
                        child: ClipRRect(
                          child: Image.asset(item['banner'], fit: BoxFit.cover,),
                        ), 
                      ),
                      Container(
                                width: double.infinity,
                                height: 209,
                                color: Color(0xFF14181F),
                                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Container(
                        width: 149,
                        height: 71,
                        child: ClipRRect(
                          child: Image.asset(item['title']),
                        ), 
                      ),
                      Text("Releasing on ${item['release']}", style: TextStyle(color: Colors.white, fontSize: 10.5, fontWeight: FontWeight.w600, fontFamily: 'inter'),),
                      SizedBox(height: 9),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                         children: item['genres'].map<Widget>((genre) {

                          int index = item['genres'].indexOf(genre);
                  
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: index == 0 ? 0 : 5, right: 5),
                                  child: Text(genre, style: TextStyle(color: Color(0xFF959EA8), fontSize: 10.5, fontWeight: FontWeight.w600, fontFamily: 'inter'),),
                                ),
                                Container(
                                  width: 2,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(99),
                                    color: Color(0xFF53575E)
                                  ),
                                ) 
                              ],
                            );
                        }).toList(),
                      ),
                      SizedBox(height: 4,),
                      Text(item['description'], style:TextStyle(color: Color(0xFF555C6A), fontSize: 10.5, fontWeight: FontWeight.w500, fontFamily: 'inter') ,),
                      SizedBox(height: 9),
                      Container(
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xFFE1E6F1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined), padding: EdgeInsets.zero,constraints: BoxConstraints(), ),
                            Text("Remind Me on", style: TextStyle(color: Color(0xff0c1218), fontSize: 12, fontFamily: 'inter', fontWeight: FontWeight.w600),),
                            SizedBox(width: 4,),
                            Text("Nov 8",style: TextStyle(color: Color(0xFF555a66), fontFamily: 'inter', fontSize: 12, fontWeight: FontWeight.w400),) 
                          ],),
                      ), ], 
                  ),
                                ) ,
                              ),
                    ],
                  ),
                );
             
  }).toList(),
            ),
            
          ],
        ),
      ),
    );
  }
}