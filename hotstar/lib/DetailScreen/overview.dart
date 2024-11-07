import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({
    super.key,
    required this.year,
    required this.duration,
    required this.lenlang,
    });

    final String year;
    final String duration;
    final String lenlang;

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
          Text(widget.year, style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
          SizedBox(width: 6),
          Text(".", style: TextStyle(fontSize: 16, color: Color(0xff96979B), fontWeight: FontWeight.w600,),),
          SizedBox(width: 6),
          Text(widget.duration, style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
          SizedBox(width: 6),
          Text(".", style: TextStyle(fontSize: 16, color: Color(0xff96979B), fontWeight: FontWeight.w600,),),
          SizedBox(width: 6),
          Text("${widget.lenlang} Languages", style: TextStyle(color: Color(0xff96979B), fontWeight: FontWeight.w600, fontSize: 10),),
        ],
      ),
    );
  }
}