import 'package:flutter/material.dart';

class NewsExperience extends StatefulWidget {
    const NewsExperience({
      super.key,
      required this.banner,
      required this.title,
      required this.release,
      required this.genre,
      required this.description
      });

      final String banner;
      final String title;
      final String release;
      final String genre;
      final String description;

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
            Column(
              children: [
                Container(
                  height: 225,
                  child: ClipRRect(
                    child: Image.asset("images/spiderman.jpg", fit: BoxFit.cover,),
                  ), 
                ),
                
              ],
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
                    Text("Releasing on Nov 19", style: TextStyle(color: Colors.white, fontSize: 10.5, fontWeight: FontWeight.w600, fontFamily: 'inter'),),
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
                                child: Text(value, style: TextStyle(color: Color(0xFF959EA9), fontSize: 10.5, fontWeight: FontWeight.w600, fontFamily: 'inter'),),
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
                    SizedBox(height: 5,),
                    Text("When The worlds find out Jeyachandran is Spiderman", style:TextStyle(color: Color(0xFF555C6B), fontSize: 10.5, fontWeight: FontWeight.w500, fontFamily: 'inter') ,),
                    SizedBox(height: 10),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFE1E6F2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined), padding: EdgeInsets.zero,constraints: BoxConstraints(), ),
                          Text("Remind Me on", style: TextStyle(color: Color(0xFF0c1219), fontSize: 12, fontFamily: 'inter', fontWeight: FontWeight.w600),),
                          SizedBox(width: 5,),
                          Text("Nov 9",style: TextStyle(color: Color(0xFF555a66), fontFamily: 'inter', fontSize: 12, fontWeight: FontWeight.w400),) 
                        ],),
                    ), ], 
                ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}