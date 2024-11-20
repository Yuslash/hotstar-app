import 'package:flutter/material.dart';

  const Color _liteText = Color(0xffc7d5f4);

class OverlayProfile extends StatefulWidget {
  const OverlayProfile({super.key});

  @override
  _OverlayProfileState createState() => _OverlayProfileState();
}

class _OverlayProfileState extends State<OverlayProfile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("images/hotstar.png", width: 50, height: 36.6, fit: BoxFit.cover,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset("images/setting.png", width: 16, height: 16, fit: BoxFit.cover,),
                    SizedBox(width: 5,),
                    Text("Help & Settings", style: TextStyle(color: _liteText, fontWeight: FontWeight.w500, fontSize: 10, fontFamily: "inter"),)
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                
              ],
            )
          ], 
        ),
      ),
    );
  }
}