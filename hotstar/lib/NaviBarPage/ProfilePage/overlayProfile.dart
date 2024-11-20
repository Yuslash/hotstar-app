import 'package:flutter/material.dart';
import 'package:hotstar/NaviBarPage/ProfilePage/bodyProfile.dart';

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
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff1d263a),
                    width: 0.5
                  )
                )
              ),
              height: 90,
              margin: EdgeInsets.only(top: 35,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Subscriber to enjoy Disney + Hotstar", style: TextStyle(color: _liteText, fontFamily: "inter", fontSize: 13, fontWeight: FontWeight.w600), ),
                        SizedBox(height: 5,),
                        Text("+91 7********8", style: TextStyle(color: Color(0xff858fa4), fontSize: 8, fontWeight: FontWeight.w600, fontFamily: "inter"),)
                      ],
                    ),
                  ),  
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 115,
                          height: 30,
                          decoration: ShapeDecoration(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(1.00, 0.00),
                            end: Alignment(-1, 0),
                            colors: [Color(0xff005aee), Color(0xff002e84)])
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,  
                            mainAxisSize: MainAxisSize.max, 
                            children: [
                               Text("Subscribe", style: TextStyle(color: _liteText, fontSize: 10, fontFamily: "inter", fontWeight: FontWeight.w600),) 
                            ], 
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text("Plan start at 149", style: TextStyle(color: Color(0xffa3adbb), fontSize: 8.5, fontWeight: FontWeight.w600, fontFamily: "inter"),)
                      ], 
                    ),
                  ), 
                ],
              ),
            ),
            BodyProfile()
          ], 
        ),
      ),
    );
  }
}