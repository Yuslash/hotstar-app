import 'package:flutter/material.dart';
import 'package:hotstar/NaviBarPage/ProfilePage/profileAvatar.dart';

const Color _liteText = Color(0xffc7d5f4);

class BodyProfile extends StatefulWidget {
  const BodyProfile({ Key? key }) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Profile", style: TextStyle(color: _liteText, fontSize: 15, fontWeight: FontWeight.w600),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max, 
                  children: [
                    Image.asset("images/edit.png", width: 10, height: 10, fit: BoxFit.cover,),
                    SizedBox(width: 5,), 
                    Text("Edit", style: TextStyle(color: _liteText, fontSize: 9, fontWeight: FontWeight.w600, fontFamily: "inter"),)
                  ],  
                )
                 ],
            ),
          ProfileAvatar() 
        ],
      ), 
    );
  }
}