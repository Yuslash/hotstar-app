import 'package:flutter/material.dart';

class WatchNowButton extends StatefulWidget {
  const WatchNowButton({super.key});

  @override
  _WatchNowButtonState createState() => _WatchNowButtonState();
}

class _WatchNowButtonState extends State<WatchNowButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFFE1E6F2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset("images/playblack.png", fit: BoxFit.cover, width: 20, height: 20),
          SizedBox(width: 5),
          Text("Watch Now", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'inter'),),
        ],
      ),
    );
  }
}