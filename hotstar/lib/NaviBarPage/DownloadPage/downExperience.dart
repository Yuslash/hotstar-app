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
      margin: EdgeInsets.only(top: 30),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 150,
                height: 110,
                child: ClipRRect(
                  child: Image.asset("images/glow.png", fit: BoxFit.contain,),
                ),
              ),
              SizedBox(height: 10,),
               Text("No Downloads Available", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),),
              SizedBox(height: 5,),
              SizedBox(
                width: 250,
                height: 27,
                 child: Text("Explore and Download your favourite movies and shows to \watch on the go", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF959BA7),
                fontSize: 10 ,
                fontWeight: FontWeight.w600,
                height: 1.4,
                ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFE2E6F1) 
                  ),
                  child: Center(
                    child: Text(
                      "Go To Home",
                      style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600,),
                    ),
                    ),
                ),
              ), 
               ],
               
          ),
        ),),), 
       ],
      ),  
      );
  }
}