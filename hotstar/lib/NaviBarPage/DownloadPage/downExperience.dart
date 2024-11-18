import 'package:flutter/material.dart';
class DownExperience extends StatefulWidget { 
  const DownExperience({ Key? key }) : super(key: key); 
  @override
   _DownExperienceState createState() => _DownExperienceState();
}

class _DownExperienceState extends State<DownExperience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.start, 
       mainAxisSize: MainAxisSize.max,
       children: [
        Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Downloads",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ) ,
       Expanded(child: 
       Container(
        color: Colors.blue,
        child: Center(
          child: Text("Hello wrold"),
        ),
       ),
       ), 
       ],
      ),  
      );
  }
}