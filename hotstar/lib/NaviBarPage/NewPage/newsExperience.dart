import 'package:flutter/material.dart';

class NewsExperience extends StatefulWidget {
  const NewsExperience({ Key? key }) : super(key: key);

  @override
  _NewsExperienceState createState() => _NewsExperienceState();
}

class _NewsExperienceState extends State<NewsExperience> {

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
            Container(
              height: 225,
              child: ClipRRect(
                child: Image.asset("images/spiderman.jpg", fit: BoxFit.cover,),
              ), 
            ),
            Container(
              width: double.infinity,
              height: 210,
              color: Color(0xFF141820),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Container(
                      width: 150,
                      height: 72,
                      child: ClipRRect(
                        child: Image.asset("images/spidertitle.png"),
                      ), 
                    ),
                    Text("Releasing on Nov 19", style: TextStyle(color: Colors.white, fontSize: 10.5, fontWeight: FontWeight.w600),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: items.asMap().entries.map((item) {

                        int index = item.key;
                        String value = item.value;

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: 5,left: index == 0 ? 0 : 5),
                                child: Text(value, style: TextStyle(color: Color(0xFF959EA9), fontSize: 10.5, fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                width: 3,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xFF53575F)
                                ),
                              ) 
                            ],
                          );
                      }).toList(),
                    ),
                  ], 
                ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}