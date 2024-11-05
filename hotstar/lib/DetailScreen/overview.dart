import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("2022", style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
          SizedBox(width: 6),
          Text(".", style: TextStyle(fontSize: 16, color: Color(0xff96979B), fontWeight: FontWeight.w600,),),
          SizedBox(width: 6),
          Text("2h 48m", style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
          SizedBox(width: 6),
          Text(".", style: TextStyle(fontSize: 16, color: Color(0xff96979B), fontWeight: FontWeight.w600,),),
          SizedBox(width: 6),
          Text("5 Languages", style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
        ],
      ),
    );
  }
}